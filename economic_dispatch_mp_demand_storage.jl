#--------------------
using PowerModels
using Ipopt
using JuMP

path = "./ModelData/"
key = "case5_strg_"
file_ext = ".m"


# Instancate a Solver
#--------------------

nlp_solver = IpoptSolver(print_level=0)
# note: print_level changes the amount of solver information printed to the terminal


# Load System Data
# ----------------


periods = 0
for (root, dirs, files) in walkdir(path)
    for file in files
        if occursin(key, file)
            println(file)
            global periods=periods+1
        end
    end
end

#mp_data=[]

for i=1:periods
    if i == 1
        data_1 = PowerModels.parse_file(string(path,key,i,file_ext))

        global mp_data = Dict{String,Any}(
            "name" => "$(data_1["name"])",
            "multinetwork" => true,
            "per_unit" => data_1["per_unit"],
            "baseMVA" => data_1["baseMVA"],
            "nw" => Dict{String,Any}()
        )

        delete!(data_1, "multinetwork")
        delete!(data_1, "per_unit")
        delete!(data_1, "baseMVA")
        global mp_data["nw"]["$(i)"] = data_1

    else
        data_2 = PowerModels.parse_file(string(path,key,i,file_ext))
        delete!(data_2, "multinetwork")
        delete!(data_2, "per_unit")
        delete!(data_2, "baseMVA")
        global mp_data["nw"]["$(i)"] = data_2
    end
end

# Add zeros to turn linear objective functions into quadratic ones
# so that additional parameter checks are not required
PowerModels.standardize_cost_terms(mp_data, order=2)

# use build_ref to filter out inactive components
#ref = PowerModels.build_ref(data)[:nw][0]
ref = PowerModels.build_ref(mp_data)
# note: ref contains all the relevant system parameters needed to build the OPF model
# When we introduce constraints and variable bounds below, we use the parameters in ref.


###############################################################################
# 1. Building the Optimal Power Flow Model
###############################################################################

# Initialize a JuMP Optimization Model
#-------------------------------------
model = Model(solver = nlp_solver)


# Add Optimization and State Variables
# ------------------------------------

# Add power generation variables for each generator, including bounds
@variable(model, ref[:nw][t][:gen][i]["pmin"] <= pg[t in keys(ref[:nw]), i in keys(ref[:nw][t][:gen])] <= ref[:nw][t][:gen][i]["pmax"])
# Add power flow variables for branches
@variable(model, -ref[:nw][t][:branch][l]["rate_a"] <= p[t in keys(ref[:nw]), (l,i,j) in ref[:nw][t][:arcs]] <= ref[:nw][t][:branch][l]["rate_a"])
# Add storage power variables
@variable(model, -ref[:nw][t][:storage][i]["discharge_rating"] <= ps[t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])] <= ref[:nw][t][:storage][i]["discharge_rating"] )
@variable(model, 0 <= es[t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])] <= ref[:nw][t][:storage][i]["energy_rating"] )


# Add Objective Function
# ----------------------

# Minimize cost power generation
# assumes costs are given as quadratic functions
@objective(model, Min,
    sum(gen["cost"][1]*pg[t,i]^2 + gen["cost"][2]*pg[t,i] + gen["cost"][3] for t in keys(ref[:nw]), (i,gen) in ref[:nw][t][:gen])
)

# Add Constraints
# ---------------

# Nodal power balance constraints
for t in keys(ref[:nw]), (i,bus) in ref[:nw][t][:bus]
    # Build a list of the loads and shunt elements connected to the bus i
    bus_loads = [ref[:nw][t][:load][l] for l in ref[:nw][t][:bus_loads][i]]
    bus_shunts = [ref[:nw][t][:shunt][s] for s in ref[:nw][t][:bus_shunts][i]]
    #bus_storage = [ref[:nw][t][:storage][e] for e in ref[:nw][t][:bus_storage][i]]

    # Power balance
    @constraint(model,
        sum(p[t,a] for a in ref[:nw][t][:bus_arcs][i]) == # sum of power flow on lines from bus i
        sum(pg[t,g] for g in ref[:nw][t][:bus_gens][i]) - # sum of power generation at bus i
        sum(load["pd"] for load in bus_loads) + # sum of active load consumption at bus i
        sum(ps[t,e] for e in ref[:nw][t][:bus_storage][i])
    )
end

# Branch flow limits
for t in keys(ref[:nw]), (i, branch) in ref[:nw][t][:branch]
    # build the from variable id of the i-th branch
    f_idx = (i, branch["f_bus"], branch["t_bus"])
    # build the to variable id of the i-th branch
    t_idx = (i, branch["t_bus"], branch["f_bus"])
     # note: it is necessary to distinguish between the from and to sides of a branch due to power losses

     p_fr = p[t,f_idx]
     p_to = p[t,t_idx]
     # note: p_fr, p_to are references to the optimization variable p[index]

     @constraint( model, p_fr + p_to == 0)

end

# Storage Energy Balance Constraints
for t in keys(ref[:nw]), (i,bus) in ref[:nw][t][:bus]
    if t == 1
        # Initial Energy Constraint
        for e in ref[:nw][t][:bus_storage][i]
            @constraint(model, es[t,e] == ref[:nw][t][:storage][e]["energy"] - ps[t,e]*ref[:nw][t][:time_elapsed])
        end

    else
        # Energy Balance Constraint
        for e in ref[:nw][t][:bus_storage][i]
            @constraint(model, es[t,e] == es[t-1,e] - ps[t,e]*ref[:nw][t][:time_elapsed])
        end
    end
    if t == length(keys(ref[:nw]))
        # Final energy must equal initial energy
        for e in ref[:nw][t][:bus_storage][i]
            @constraint(model, es[t,e] == ref[:nw][t][:storage][e]["energy"])
        end
    end
end



###############################################################################
# 3. Solve the Optimal Power Flow Model and Review the Results
###############################################################################

# Solve the optimization problem
status = solve(model)
println(status)

# Check the value of the objective function
cost = getobjectivevalue(model)
println("The cost of generation is $(cost).")

# Check the value of an optimization variable
# Example: Active power generated at generator 1

println("The active power generated at  each generator is:")
for t in keys(ref[:nw]), i in keys(ref[:nw][t][:gen])
     #println("In timestep $(t), generator $(i) produces $(getvalue(pg[t,i])*ref[:nw][t][:baseMVA]) p.u. (not MW_.")
     println("In timestep $(t), generator $(i) produces $(getvalue(pg[t,i])*mp_data["baseMVA"]) MW")
end

for t in keys(ref[:nw])
     #println("In timestep $(t), generator $(i) produces $(getvalue(pg[t,i])*ref[:nw][t][:baseMVA]) p.u. (not MW_.")
     println("\nIn timestep $(t), $(sum(getvalue(pg[t,i])*mp_data["baseMVA"] for i in keys(ref[:nw][t][:gen]))) MW is generated")
end
println("\nThe active power at each storage system is:")
for t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])
     #println("In timestep $(t), generator $(i) produces $(getvalue(pg[t,i])*ref[:nw][t][:baseMVA]) p.u. (not MW_.")
     println("In timestep $(t), storage system $(i) stores $(-getvalue(ps[t,i])) p.u.")
end
println("\nThe energy stored at each storage system is:")
for t in keys(ref[:nw]), i in keys(ref[:nw][t][:storage])
     #println("In timestep $(t), generator $(i) produces $(getvalue(pg[t,i])*ref[:nw][t][:baseMVA]) p.u. (not MW_.")
     println("In timestep $(t), storage system $(i) stores $(getvalue(es[t,i])*mp_data["baseMVA"]) MWh")
end


# note: the optimization model is in per unit, so the baseMVA value is used to restore the physical units
