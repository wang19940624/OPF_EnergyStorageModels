#--------------------
using PowerModels
using Ipopt
using JuMP

# function files
include("../functions/func_AC_OPF_MP.jl")
include("../functions/func_DC_OPF_MP.jl")
include("../functions/func_networkRead.jl")



path = "./ModelData/"
key = "case_ieee123_storage_"
file_ext = ".m"

mp_data = func_networkRead(path,key,file_ext)

# # Add zeros to turn linear objective functions into quadratic ones
# # so that additional parameter checks are not required
PowerModels.standardize_cost_terms(mp_data, order=2)

## use build_ref to filter out inactive components
#ref = PowerModels.build_ref(data)[:nw][0]
ref = PowerModels.build_ref(mp_data)
# note: ref contains all the relevant system parameters needed to build the OPF model
# When we introduce constraints and variable bounds below, we use the parameters in ref.


######################
# Run AC analysis
######################
include("../functions/func_AC_OPF_MP.jl")
results = func_AC_OPF_MP(ref)

# make generation and storage decisions for current time period
# println("Time period $(k) \$",results["cost"][1])
gen_cost = results["cost"];
for k in keys(ref[:nw]), i in keys(ref[:nw][k][:gen])
    mp_data["nw"][string(k)]["gen"][string(i)]["pg"] = results["pg"][k,i]
    mp_data["nw"][string(k)]["gen"][string(i)]["qg"] = results["qg"][k,i]
end
for k in keys(ref[:nw]), i in keys(ref[:nw][k][:storage])
    mp_data["nw"][string(k)]["storage"][string(i)]["energy"] = results["es"][k,i]
end


solved = PowerModels.build_ref(mp_data)
println("Cost of generation: \$", sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t])))
include("../functions/plotting_functions.jl")
println("Making plots...")

plotGeneration(ref, "Output/Rand100_AC");
plotSoC(ref, "Output/Rand100_AC");
plotStoragePower(ref, "Output/Rand100_AC");
plotDemand(ref, "Output/Rand100_AC");
plotGenCost(gen_cost, "Output/Rand100_AC");

######################
# Run DC analysis
######################
include("../functions/func_DC_OPF_MP.jl")
results = func_DC_OPF_MP(ref)

# make generation and storage decisions for current time period
# println("Time period $(k) \$",results["cost"][1])
gen_cost = results["cost"];
for k in keys(ref[:nw]), i in keys(ref[:nw][k][:gen])
    mp_data["nw"][string(k)]["gen"][string(i)]["pg"] = results["pg"][k,i]
    #mp_data["nw"][string(k)]["gen"][string(i)]["qg"] = results["qg"][k,i]
end
for k in keys(ref[:nw]), i in keys(ref[:nw][k][:storage])
    mp_data["nw"][string(k)]["storage"][string(i)]["energy"] = results["es"][k,i]
end


solved = PowerModels.build_ref(mp_data)
println("Cost of generation: \$", sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t])))
println("Making plots...")

plotGeneration(ref, "Output/Rand100_DC");
plotSoC(ref, "Output/Rand100_DC");
plotStoragePower(ref, "Output/Rand100_DC");
plotDemand(ref, "Output/Rand100_DC");
plotGenCost(gen_cost, "Output/Rand100_DC");
