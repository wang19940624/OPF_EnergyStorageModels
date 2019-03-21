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

file_name = "case5_storage_Flywheel.m"
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
