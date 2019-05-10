
###################################
## Import packages and functions ##
###################################
using PowerModels
using Ipopt
using JuMP
using DelimitedFiles

# function files
path = "C:/Users/noahx23/Git_Projects/Power Systems Research"
#path = "C:/Users/Noah Rhodes/Git_Projects/Power_Models_Research"
include(string(path,"/functions/func_AC_OPF_MP.jl"))
include(string(path,"/functions/func_networkRead.jl"))
include(string(path,"/functions/plotting_functions.jl"))

###############
## Read data ##
###############
data_path = "./ModelData/"
output_path = "./Output_ACOPF/"
key = "case_ieee123_storage_"
file_ext = ".m"
mp_data = func_networkRead(data_path,key,file_ext)
PowerModels.standardize_cost_terms(mp_data, order=2)

###########################
## Modify Storage Values ##
###########################

# No storage devices in Network


#################################################
## build_ref to filter out inactive components ##
#################################################
ref = PowerModels.build_ref(mp_data)


######################
# Run AC analysis
######################
results = func_AC_OPF_MP(ref)

####################################################
## Save generation/storage decisions into mp_data ##
####################################################
gen_cost = results["cost"];
for k in keys(ref[:nw]), i in keys(ref[:nw][k][:gen])
    mp_data["nw"][string(k)]["gen"][string(i)]["pg"] = results["pg"][k,i]
    mp_data["nw"][string(k)]["gen"][string(i)]["qg"] = results["qg"][k,i]
end
for k in keys(ref[:nw]), i in keys(ref[:nw][k][:storage])
    mp_data["nw"][string(k)]["storage"][string(i)]["energy"] = results["es"][k,i]
end


solved = PowerModels.build_ref(mp_data)

##########################
##   Analysis Results   ##
## - Cost of Generation ##
## - Charge Cycles      ##
##########################
total_gen_cost = sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t]))

timesteps=length(collect(keys(solved[:nw])))
t_start = minimum(collect(keys(solved[:nw])))
storage = length(collect(keys(solved[:nw][t_start][:storage])))
power_cycles = zeros(storage, timesteps)
cycles = zeros(storage)
for i in sort(collect(keys(solved[:nw][t_start][:storage])))
    for t in sort(collect(keys(solved[:nw])))
        if t == t_start
            power_cycles[i,t] = 0
        elseif t<=timesteps
            power_cycles[i,t] = (solved[:nw][t][:storage][i]["energy"]-solved[:nw][t-1][:storage][i]["energy"])/solved[:nw][t][:storage][i]["energy_rating"]
        end
    end
end
for i in sort(collect(keys(solved[:nw][t_start][:storage])))
    cycles[i] = sum(abs.(power_cycles[i,t]) for t in keys(solved[:nw]))/2
end

# write analysis data to file
rm(string(output_path,"data_output.txt"),force=true)
io = open(string(output_path,"data_output.txt"), "w");
write(io, "Cost of Electricity Generation: \$$(total_gen_cost) \n");
for i in sort(collect(keys(solved[:nw][t_start][:storage])))
    write(io, "Storage device [$(i)] Charge Cycles: $(cycles[i]) \n");
end
close(io)
# print analysis
println("Cost of generation: \$", sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t])))
for i in sort(collect(keys(solved[:nw][t_start][:storage])))
    println("Storage device [$(i)] Charge Cycles: $(cycles[i])\n");
end

println("Cost of generation: \$", sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t])))
println("Storage Cycles: No Storage Devices")

####################
## Create Figures ##
####################
println("Making plots...")
plotGeneration(solved, string(output_path,"PS_AC"), "Pecan Street ACOPF")
plotDemand(solved, string(output_path,"PS_AC"), "Pecan Street ACOPF")
