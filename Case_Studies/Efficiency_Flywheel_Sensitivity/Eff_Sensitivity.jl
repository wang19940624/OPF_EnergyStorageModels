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

k = 1
T = 1

mp_data = func_networkRead(data_path,key,file_ext)

# # Add zeros to turn linear objective functions into quadratic ones
# # so that additional parameter checks are not required
PowerModels.standardize_cost_terms(mp_data, order=2)

#losses = [0,0.01,0.05,0.1,0.15,0.2,0.25]
losses = collect(LinRange(0.00,0.20,20))
total_gen_cost = zeros(length(losses))
for l=1:length(losses)
    println("Losses set to $(losses[l])%")
    for t in keys(mp_data["nw"]), e in keys(mp_data["nw"][string(t)]["storage"])
        mp_data["nw"][string(t)]["storage"][string(e)]["standby_loss"] = losses[l]
    end

    ## use build_ref to filter out inractive components
    #ref = PowerModels.build_ref(data)[:nw][0]
    ref = PowerModels.build_ref(mp_data)
    # note: ref contains all the relevant system parameters needed to build the OPF model
    # When we introduce constraints and variable bounds below, we use the parameters in ref.

    ######################
    # Run AC analysis
    ######################
    results = func_AC_OPF_CT_MP(ref,k,T)

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
    total_gen_cost[l] = sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t]))
    println("Cost of generation: \$", sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t])))

    println("Making plots...")

    plotGeneration(solved, string(output_path,"CT_AC_",l),"Standby Loss: $(losses[l])");#, "Efficiency: $(losses[l])");
    plotSoC(solved, string(output_path,"CT_AC_",l), "Standby Loss: $(losses[l])");
    plotStoragePower(solved, string(output_path,"CT_AC_",l), "Standby Loss: $(losses[l])");

    #plotGenCost(gen_cost, string(output_path,"CT_AC_",losses[l]));
    plotCTEnergyPower(solved, string(output_path,"CT_AC_",l), "Standby Loss: $(losses[l])");

    if l == 1
        plotDemand(solved, string(output_path,"CT_AC_",l), "Standby Loss: $(losses[l])");
    end
end

println("Efficiency Values:")
println(losses)
println("Total Cost of Generation:")
println(total_gen_cost)

writedlm("Gen_Cost_v_Losses", [losses total_gen_cost], ',')
