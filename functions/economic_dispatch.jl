#### AC Optimal Power Flow ####

# This file provides a pedagogical example of modeling the AC Optimal Power
# Flow problem using the Julia Mathematical Programming package (JuMP) and the
# PowerModels package for data parsing.

# This file can be run by calling `include("ac-opf.jl")` from the Julia REPL or
# by calling `julia ac-opf.jl` in Julia v0.6.

# Developed by Line Roald (@lroald) and Carleton Coffrin (@ccoffrin)


###############################################################################
# 0. Initialization
###############################################################################

# Load Julia Packages
#--------------------
using PowerModels
using Ipopt
using JuMP


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

file_name = "$(powermodels_path)/test/data/matpower/case5.m"
# note: change this string to modify the network data that will be loaded

# load the data file
data = PowerModels.parse_file(file_name)

# Add zeros to turn linear objective functions into quadratic ones
# so that additional parameter checks are not required
PowerModels.standardize_cost_terms(data, order=2)

# use build_ref to filter out inactive components
ref = PowerModels.build_ref(data)[:nw][0]
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
@variable(model, ref[:gen][i]["pmin"] <= pg[i in keys(ref[:gen])] <= ref[:gen][i]["pmax"])
# Add power flow variables for branches
@variable(model, -ref[:branch][l]["rate_a"] <= p[(l,i,j) in ref[:arcs]] <= ref[:branch][l]["rate_a"])

# Add Objective Function
# ----------------------

# Minimize cost power generation
# assumes costs are given as quadratic functions
@objective(model, Min,
    sum(gen["cost"][1]*pg[i]^2 + gen["cost"][2]*pg[i] + gen["cost"][3] for (i,gen) in ref[:gen])
)

# Add Constraints
# ---------------

# Nodal power balance constraints
for (i,bus) in ref[:bus]
    # Build a list of the loads and shunt elements connected to the bus i
    bus_loads = [ref[:load][l] for l in ref[:bus_loads][i]]
    bus_shunts = [ref[:shunt][s] for s in ref[:bus_shunts][i]]

    # Power balance
    @constraint(model,
        sum(p[a] for a in ref[:bus_arcs][i]) == # sum of power flow on lines from bus i
        sum(pg[g] for g in ref[:bus_gens][i]) - # sum of power generation at bus i
        sum(load["pd"] for load in bus_loads)   # sum of active load consumption at bus i
    )
end

# Branch flow limits
for (i, branch) in ref[:branch]
    # build the from variable id of the i-th branch
    f_idx = (i, branch["f_bus"], branch["t_bus"])
    # build the to variable id of the i-th branch
    t_idx = (i, branch["t_bus"], branch["f_bus"])
     # note: it is necessary to distinguish between the from and to sides of a branch due to power losses

     p_fr = p[f_idx]
     p_to = p[t_idx]
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
pg1 = getvalue(pg[1])
println("The active power generated at generator 1 is $(pg1*ref[:baseMVA]) MW.")
# note: the optimization model is in per unit, so the baseMVA value is used to restore the physical units
