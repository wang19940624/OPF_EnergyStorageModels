#--------------------
using PowerModels
using Ipopt
using JuMP
using DelimitedFiles
# function files
path = "C:/Users/noahx23/Git_Projects/Power Systems Research"
include(string(path,"/functions/func_AC_OPF_CT_MP.jl"))
include(string(path,"/functions/func_networkRead.jl"))
include(string(path,"/functions/plotting_functions.jl"))


data_path = "./ModelData/"
output_path = "./Output/"
key = "case_ieee123_storage_"
file_ext = ".m"

mp_data = func_networkRead(data_path,key,file_ext)

# # Add zeros to turn linear objective functions into quadratic ones
# # so that additional parameter checks are not required
PowerModels.standardize_cost_terms(mp_data, order=2)


# time horizon for optimization
horizon = 5
gen_cost = Dict(t => Dict() for t =1:length(keys(mp_data["nw"]))-horizon)
#[t] = results["cost"][t]

for k=1:length(keys(mp_data["nw"]))-horizon
    global horizon_data = Dict{String,Any}(
            "name" => "Period $(k)",
            "multinetwork" => true,
            "per_unit" => mp_data["per_unit"],
            "baseMVA" => mp_data["baseMVA"],
            "nw" =>  Dict{String,Any}()
        )

    for w=k:k+horizon -1
        horizon_data["nw"][string(w)] = mp_data["nw"][string(w)]
    end

    # use build_ref to filter out inactive components
    ref = PowerModels.build_ref(horizon_data)

    # compute optimization
    results = func_AC_OPF_CT_MP(ref, 1, 1, k, horizon)

    #TODO store results in current period or next period?
    # make generation and storage decisions for current time period
    println("Time period $(k), Generation cost is: \$", sum(results["cost"][k][i] for i in keys(results["cost"][k])))
    gen_cost[k] = results["cost"][k]
    for i in keys(ref[:nw][k][:gen])
        mp_data["nw"][string(k+1)]["gen"][string(i)]["pg"] = results["pg"][k,i] #save generation value for ramp rates in next time step
        mp_data["nw"][string(k)]["gen"][string(i)]["pg"] = results["pg"][k,i] #save generation for current output
        mp_data["nw"][string(k+1)]["gen"][string(i)]["qg"] = results["qg"][k+1,i]
    end
    for i in keys(ref[:nw][k][:storage])
        mp_data["nw"][string(k+1)]["storage"][string(i)]["energy"] = results["es"][k,i] #save current battery level for future teim step
        mp_data["nw"][string(k)]["storage"][string(i)]["energy"] = results["es"][k,i] #save battery level for output
    end

end


solved = PowerModels.build_ref(mp_data)
total_gen_cost = sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t]))
println("Cost of generation: \$", sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t])))

println("Making plots...")

plotGeneration(solved, string(output_path,"PS_AC"), "Pecan Street", 1, 10);
plotSoC(solved, string(output_path,"PS_AC"), "Pecan Street", 1, 10);
plotStoragePower(solved, string(output_path,"PS_AC"), "Pecan Street", 1, 10);
plotCTEnergyPower(solved, string(output_path,"PS_AC"), "Pecan Street",1,1, 1, 10);
plotDemand(solved, string(output_path,"PS_AC"), "Pecan Street", 1, 10);
