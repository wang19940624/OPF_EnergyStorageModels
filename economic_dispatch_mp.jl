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
periods = 2
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
@variable(model, ref[:nw][j][:gen][i]["pmin"] <= pg[j in keys(ref[:nw]), i in keys(ref[:nw][j][:gen])] <= ref[:nw][j][:gen][i]["pmax"])
# Add power flow variables for branches
@variable(model, -ref[:nw][k][:branch][l]["rate_a"] <= p[k in keys(ref[:nw]), (l,i,j) in ref[:nw][k][:arcs]] <= ref[:nw][k][:branch][l]["rate_a"])

# Add Objective Function
# ----------------------

# Minimize cost power generation
# assumes costs are given as quadratic functions
@objective(model, Min,
    sum(gen["cost"][1]*pg[j,i]^2 + gen["cost"][2]*pg[j,i] + gen["cost"][3] for j in keys(ref[:nw]), (i,gen) in ref[:nw][j][:gen])
)
