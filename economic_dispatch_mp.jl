#--------------------
using PowerModels
using Ipopt
using JuMP

#function build_mn_data(base_data; replicates::Int=2)
#    mp_data = PowerModels.parse_file(base_data)
#    return PowerModels.replicate(mp_data, replicates)
#end

# Instancate a Solver
#--------------------

nlp_solver = IpoptSolver(print_level=0)
# note: print_level changes the amount of solver information printed to the terminal


# Load System Data
# ----------------

if VERSION < v"0.7.0"
    powermodels_path = Pkg.dir("PowerModels")
else
    powermodels_path = joinpath(dirname(pathof(PowerModels)), "..")
end

file_name = "ModelData/case5"
file_ext = ".m"
periods = 1
# note: change this string to modify the network data that will be loaded

# load network data
base_data = PowerModels.parse_file(string(file_name,"_",1,file_ext))

# clean load data
for i in keys(base_data["bus"])
    base_data["load"][i] = base_data["load"]["1"]
end

# create multi-network replicates
mp_data = PowerModels.replicate(base_data, periods)

#data
#data = build_mn_data(string(file_name,"_",1,file_ext),replicates = periods)



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

    # Power balance
    @constraint(model,
        sum(p[t,a] for a in ref[:nw][t][:bus_arcs][i]) == # sum of power flow on lines from bus i
        sum(pg[t,g] for g in ref[:nw][t][:bus_gens][i]) - # sum of power generation at bus i
        sum(load["pd"] for load in bus_loads)   # sum of active load consumption at bus i
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


###############################################################################
# 3. Solve the Optimal Power Flow Model and Review the Results
###############################################################################

# Solve the optimization problem
status = solve(model)

# Check the value of the objective function
cost = getobjectivevalue(model)
println("The cost of generation is $(cost).")

# Check the value of an optimization variable
# Example: Active power generated at generator 1

println("The active power generated at  each generator is:")
for t in keys(ref[:nw]), i in keys(ref[:nw][t][:gen])
     #println("In timestep $(t), generator $(i) produces $(getvalue(pg[t,i])*ref[:nw][t][:baseMVA]) p.u. (not MW_.")
     println("In timestep $(t), generator $(i) produces $(getvalue(pg[t,i])) p.u.")
end

# note: the optimization model is in per unit, so the baseMVA value is used to restore the physical units
