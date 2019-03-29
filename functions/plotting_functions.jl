# Plotting code
using JuMP, Ipopt,PyCall, PyPlot
function plotGeneration(data, name, baseMVA=1,timesteps=length(collect(keys(data[:nw]))))
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    t_start = minimum(collect(keys(data[:nw])))
    generators = length(collect(keys(data[:nw][t_start][:gen])))
    x = zeros(generators, timesteps)
    y = zeros(generators, timesteps)

    for i in sort(collect(keys(data[:nw][t_start][:gen])))
        for t in sort(collect(keys(data[:nw])))
            if t<=timesteps
                x[i,t] = t
                y[i,t] = data[:nw][t][:gen][i]["pg"]*baseMVA
            end
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure(figsize=(8,8))
    b = bar(x[1,:],y[1,:], align="center",alpha=0.4)
    for i = 2:generators
        b = bar(x[i,:],y[i,:], bottom=sum(y[k,:] for k=1:i-1), align="center",alpha=0.4)
    end
    axis("tight")
    title("Generation $name")
    grid("true")
    xlabel("Timestep")
    ylabel("MWs")
    legend(1:generators, loc="center left", bbox_to_anchor=(1, 0.5))
    gcf() # Needed for IJulia to plot inline
    savefig(string(name,"_Generation.svg"))
    close("all")
end

function plotDemand(data, name, baseMVA=1,timesteps=length(collect(keys(data[:nw]))))
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    t_start = minimum(collect(keys(data[:nw])))
    loads = length(collect(keys(data[:nw][t_start][:load])))
    x = zeros(loads, timesteps)
    y = zeros(loads, timesteps)

    for i in sort(collect(keys(data[:nw][t_start][:load])))
        for t in sort(collect(keys(data[:nw])))
            if t<=timesteps
                x[i,t] = t
                y[i,t] = data[:nw][t][:load][i]["pd"]*baseMVA
            end
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure(figsize=(8,8))
    b = bar(x[1,:],y[1,:], align="center",alpha=0.4)
    for i = 2:loads
        b = bar(x[i,:],y[i,:], bottom=sum(y[k,:] for k=1:i-1), align="center",alpha=0.4)
    end
    axis("tight")
    title("Load $name")
    grid("true")
    xlabel("Timestep")
    ylabel("MWs")
    legend(1:loads, loc="center left", bbox_to_anchor=(1, 0.5))
    gcf() # Needed for IJulia to plot inline
    savefig(string(name,"_Loads.svg"))
    close("all")
end

function plotSoC(data, name, baseMVA=1,timesteps=length(collect(keys(data[:nw]))))
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    t_start = minimum(collect(keys(data[:nw])))
    storage = length(collect(keys(data[:nw][t_start][:storage])))
    x = zeros(storage, timesteps)
    y = zeros(storage, timesteps)

    for  i in sort(collect(keys(data[:nw][t_start][:storage])))
        for t in sort(collect(keys(data[:nw])))
            if t<=timesteps
                x[i,t] = t
                y[i,t] = data[:nw][t][:storage][i]["energy"]*baseMVA
            end
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure(figsize=(8,8))
    b = bar(x[1,:],y[1,:], align="center",alpha=0.4)
    for i = 2:storage
        b = bar(x[i,:],y[i,:], bottom=sum(y[k,:] for k=1:i-1), align="center",alpha=0.4)
    end
    axis("tight")
    title("Storage Use $name")
    grid("true")
    xlabel("Timestep")
    ylabel("State of Charge")
    legend(1:storage, loc="center left", bbox_to_anchor=(1, 0.5))

    gcf() # Needed for IJulia to plot inline
    savefig(string(name,"_SoC.svg"))
    close("all")
end

function plotStoragePower(data, name, baseMVA=1,timesteps=length(collect(keys(data[:nw]))))
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    t_start = minimum(collect(keys(data[:nw])))
    storage = length(collect(keys(data[:nw][t_start][:storage])))
    x = zeros(storage, timesteps)
    y = zeros(storage, timesteps)

    for i in sort(collect(keys(data[:nw][t_start][:storage])))
        for t in sort(collect(keys(data[:nw])))
            if t == t_start
                x[i,t] = t
                y[i,t] = 0
            elseif t<=timesteps
                x[i,t] = t
                y[i,t] = (data[:nw][t][:storage][i]["energy"]-data[:nw][t-1][:storage][i]["energy"])/data[:nw][t][:time_elapsed]*baseMVA
            end
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure(figsize=(8,8))
    b = bar(x[1,:],y[1,:], align="center",alpha=0.4)
    for i = 2:storage
        b = bar(x[i,:],y[i,:], bottom=sum(y[k,:] for k=1:i-1), align="center",alpha=0.4)
    end
    axis("tight")
    title("Storage Power $name")
    grid("true")
    xlabel("Timestep")
    ylabel("Power Demand MWs")
    legend(1:storage, loc="center left", bbox_to_anchor=(1, 0.5))

    gcf() # Needed for IJulia to plot inline
    savefig(string(name,"_StoragePower.svg"))
    close("all")
end

function plotGenCost(data, name, baseMVA=1, timesteps=length(collect(keys(data))))
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    t_start = minimum(collect(keys(data)))
    generators = length(collect(keys(data[t_start])))
    x = zeros(generators, timesteps)
    y = zeros(generators, timesteps)

    for i in sort(collect(keys(data[t_start])))
        for t in sort(collect(keys(data)))
            if t<=timesteps
                x[i,t] = t
                y[i,t] = data[t][i]
            end
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure(figsize=(8,8))
    b = bar(x[1,:],y[1,:], align="center",alpha=0.4)
    for i = 2:generators
        b = bar(x[i,:],y[i,:], bottom=sum(y[k,:] for k=1:i-1), align="center",alpha=0.4)
    end
    axis("tight")
    title("Cost of Generation $name")
    grid("true")
    xlabel("Timestep")
    ylabel("Energy Cost [\$]")
    legend(1:generators, loc="center left", bbox_to_anchor=(1, 0.5))
    #text([(2, 2, text(string("Total Cost: \$", sum(data[t][i] for t in keys(data) for i in keys(data[t]))), :right, 20))])
    text(2,2,string("Total Cost: \$", sum(data[t][i] for t in keys(data) for i in keys(data[t]))))
    gcf() # Needed for IJulia to plot inline
    savefig(string(name,"_GenCost.svg"))
    close("all")
end

function plotCTEnergyPower(data, name, k=1, T=1, baseMVA=1,timesteps=length(collect(keys(data[:nw]))))
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    t_start = minimum(collect(keys(data[:nw])))
    storage = length(collect(keys(data[:nw][t_start][:storage])))
    x = zeros(storage, timesteps)
    y = zeros(storage, timesteps)

    for i in sort(collect(keys(data[:nw][t_start][:storage])))
        for t in sort(collect(keys(data[:nw])))
            if t == t_start
                x[i,t] = data[:nw][t][:storage][i]["energy"]*baseMVA
                y[i,t] = 0
            elseif t<=timesteps
                x[i,t] = data[:nw][t][:storage][i]["energy"]*baseMVA
                y[i,t] = (data[:nw][t][:storage][i]["energy"]-data[:nw][t-1][:storage][i]["energy"])/data[:nw][t][:time_elapsed]*baseMVA
            end
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure(figsize=(8,8))
    for i = 1:storage
        b = scatter(x[i,:],y[i,:],alpha=0.4)
    end

    #######################
    ## Operating Boundry ##
    #######################
    omega =  collect(LinRange(0.00,sqrt(data[:nw][t_start][:storage][1]["energy_rating"]/k),25))
    E = k.*omega.^2
    Phigh = T.*omega
    plot(E,Phigh,E,-Phigh)

    energy = 0.25*maximum(E)
    power = T*sqrt(energy/k)


    x1 = range(energy, stop=energy, length=10)
    y1 = range(-power,stop=power,length=10)
    x2 = range(energy, stop=maximum(E), length=10)
    y2 = range(power, stop=power, length=10)
    x3 = range(energy, stop=maximum(E), length=10)
    y3 = range(-power, stop=-power, length=10)


    plot(x1,y1,x2,y2,x3,y3)


    #end
    axis("tight")
    title("Storage Operating Points $name")
    grid("true")
    xlabel("Energy Storage")
    ylabel("Power Demand MWs")
    legend(1:storage, loc="center left", bbox_to_anchor=(1, 0.5))

    gcf() # Needed for IJulia to plot inline
    savefig(string(name,"_StorageOperating.svg"))
    close("all")
end
