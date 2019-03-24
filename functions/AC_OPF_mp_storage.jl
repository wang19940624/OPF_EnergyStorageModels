#--------------------
using PowerModels
using Ipopt
using JuMP

path = "ModelData/"
key = "case_ieee123_storage_"
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

include("func_AC_OPF_MP.jl")
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
include("plotting_functions.jl")
println("Making plots...")

include("plotting_functions.jl")
plotGeneration(ref, "Rand100_AC");
plotSoC(ref, "Rand100_AC");
plotStoragePower(ref, "Rand100_AC");
plotDemand(ref, "Rand100_AC");
plotGenCost(gen_cost, "Rand100_AC");
