
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
data_path = "./ModelData - Storage/"
output_path = "./Output_ACOPF - Flywheel - Full/"
key = "case_ieee123_storage_"
file_ext = ".m"
horizon = 60
mp_data = func_networkRead(data_path,key,file_ext)
PowerModels.standardize_cost_terms(mp_data, order=2)

###########################
## Modify Storage Values ##
###########################
storage_energy_rating = 0.010 #MWh
storage_energy = 0.005 #MWh
storage_energy_min = 0.25 # 25% minimum SoC
storage_power_rating = 0.010 #MW
stdby_losses = 0.10 # 10% losses per hour
charge_losses = 0.95 # 95% charge and discharge efficiency

# Flywheel Parameters
# assume omega  = 10,000 rpm
baseMVA = mp_data["baseMVA"]
#T = storage_power_rating*baseMVA*1e6/10e3*2 #power defined @ 25% speed. At 100% speed max power doubles
#k = storage_energy_rating*baseMVA*1e6/(10e3)^2
T = storage_power_rating*baseMVA*10
k = storage_energy_rating*baseMVA*10

println("Energy Storage Rating set to $(storage_energy_rating) MWh")
for t in keys(mp_data["nw"]), e in keys(mp_data["nw"][string(t)]["storage"])
    mp_data["nw"][string(t)]["storage"][string(e)]["energy_rating"] = storage_energy_rating
end

println("Energy Storage set to $(storage_energy) MWh")
for t in keys(mp_data["nw"]), e in keys(mp_data["nw"][string(t)]["storage"])
    mp_data["nw"][string(t)]["storage"][string(e)]["energy"] = storage_energy
end

println("Energy Storage Minimum SoC set to $(storage_energy_min*100) %")
for t in keys(mp_data["nw"]), e in keys(mp_data["nw"][string(t)]["storage"])
    mp_data["nw"][string(t)]["storage"][string(e)]["energy_min"] = storage_energy_min*storage_energy_rating
end

println("Energy Power Rating set to $(storage_power_rating) MW")
for t in keys(mp_data["nw"]), e in keys(mp_data["nw"][string(t)]["storage"])
    mp_data["nw"][string(t)]["storage"][string(e)]["charge_rating"] = storage_power_rating
    mp_data["nw"][string(t)]["storage"][string(e)]["discharge_rating"] = storage_power_rating
end

println("Standby Losses set to $(stdby_losses*100)%")
for t in keys(mp_data["nw"]), e in keys(mp_data["nw"][string(t)]["storage"])
    mp_data["nw"][string(t)]["storage"][string(e)]["standby_loss"] = stdby_losses
end

println("Charge/Discharge Losses set to $(charge_losses*100)%")
for t in keys(mp_data["nw"]), e in keys(mp_data["nw"][string(t)]["storage"])
    mp_data["nw"][string(t)]["storage"][string(e)]["charge_efficiency"] = charge_losses
    mp_data["nw"][string(t)]["storage"][string(e)]["discharge_efficiency"] = charge_losses
end


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
#total_gen_cost = sum(gen_cost[t][i] for t in keys(gen_cost) for i in keys(gen_cost[t]))
total_gen_cost = sum(gen_cost[t][i] for t=1:length(keys(gen_cost))-horizon for i in keys(gen_cost[t]))

t_start = minimum(collect(keys(solved[:nw])))
timesteps=length(collect(keys(solved[:nw]))) - horizon
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
    cycles[i] = sum(abs.(power_cycles[i,t]) for t = t_start:timesteps)/2
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

####################
## Create Figures ##
####################
println("Making plots...")
baseMVA = mp_data["baseMVA"]
plotGeneration(solved, string(output_path,"PS_AC"), "Pecan Street ACOPF",baseMVA, timesteps)
plotSoC(solved, string(output_path,"PS_AC"), "Pecan Street ACOPF",baseMVA, timesteps)
plotStoragePower(solved, string(output_path,"PS_AC"), "Pecan Street ACOPF",baseMVA, timesteps)
plotFWEnergyPower(solved, string(output_path,"PS_AC"), "Pecan Street ACOPF", k, T, baseMVA, timesteps)
#plotDemand(solved, string(output_path,"PS_AC"), "Pecan Street ACOPF",baseMVA, timesteps)
