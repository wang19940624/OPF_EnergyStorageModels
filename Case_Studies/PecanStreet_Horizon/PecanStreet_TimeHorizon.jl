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
gen_cost = Dict(t => Dict() for t = 1:length(keys(mp_data["nw"]))-horizon)

#storage_energy = 10 .^(range(-2,stop=0,length=20)) #Energy storage from 0.01 MWh to 1 MWh
storage_energy = 0.10 #MWh
losses = 0.1 # 10% losses per hour
println("Energy Storage set to $(storage_energy) MWh, Energy Power set to $(storage_energy*10)")
k = storage_energy[1]*10^2
T = k
for t in keys(mp_data["nw"]), e in keys(mp_data["nw"][string(t)]["storage"])
    mp_data["nw"][string(t)]["storage"][string(e)]["energy_storage"] = storage_energy[1]
end

println("Losses set to $(losses*100)%")
for t in keys(mp_data["nw"]), e in keys(mp_data["nw"][string(t)]["storage"])
    mp_data["nw"][string(t)]["storage"][string(e)]["standby_loss"] = losses
end


for c=1:length(keys(mp_data["nw"]))-horizon
    global horizon_data = Dict{String,Any}(
            "name" => "Period $(c)",
            "multinetwork" => true,
            "per_unit" => mp_data["per_unit"],
            "baseMVA" => mp_data["baseMVA"],
            "nw" =>  Dict{String,Any}()
        )

    for w=c:c+horizon -1
        horizon_data["nw"][string(w)] = mp_data["nw"][string(w)]
    end


    # use build_ref to filter out inactive components
    ref = PowerModels.build_ref(horizon_data)

    # compute optimization
    results = func_AC_OPF_CT_MP(ref, k, T, c, horizon)

    #TODO store results in current period or next period?
    # make generation and storage decisions for current time period
    println("Time period $(c), Generation cost is: \$", sum(results["cost"][c][i] for i in keys(results["cost"][c])))
    gen_cost[c] = results["cost"][c]
    for i in keys(ref[:nw][c][:gen])
        mp_data["nw"][string(c+1)]["gen"][string(i)]["pg"] = results["pg"][c,i] #save generation value for ramp rates in next time step
        mp_data["nw"][string(c)]["gen"][string(i)]["pg"] = results["pg"][c,i] #save generation for current output
        mp_data["nw"][string(c+1)]["gen"][string(i)]["qg"] = results["qg"][c+1,i]
    end
    for i in keys(ref[:nw][c][:storage])
        mp_data["nw"][string(c+1)]["storage"][string(i)]["energy"] = results["es"][c,i] #save current battery level for future teim step
        mp_data["nw"][string(c)]["storage"][string(i)]["energy"] = results["es"][c,i] #save battery level for output
    end

end


solved = PowerModels.build_ref(mp_data)
total_gen_cost = sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t]))
println("Cost of generation: \$", sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t])))

println("Making plots...")
windowsSize = length(keys(mp_data["nw"]))-horizon
plotGeneration(solved, string(output_path,"PS_AC"), "Pecan Street", 1, windowsSize);
plotSoC(solved, string(output_path,"PS_AC"), "Pecan Street", 1, 10);
plotStoragePower(solved, string(output_path,"PS_AC"), "Pecan Street", 1, windowsSize);
plotCTEnergyPower(solved, string(output_path,"PS_AC"), "Pecan Street",k,T, 1, windowsSize);
plotDemand(solved, string(output_path,"PS_AC"), "Pecan Street", 1, windowsSize);
