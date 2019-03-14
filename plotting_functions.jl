# Plotting code
using PyCall, PyPlot
function plotGeneration(data,baseMVA=1,timesteps=length(collect(keys(data[:nw]))))
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
    title("Generation")
    grid("true")
    xlabel("Timestep")
    ylabel("MWs")
    legend(1:generators, loc="center left", bbox_to_anchor=(1, 0.5))
    gcf() # Needed for IJulia to plot inline
    savefig("Generation.svg")
end

function plotDemand(data,baseMVA=1,timesteps=length(collect(keys(data[:nw]))))
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
    title("Load")
    grid("true")
    xlabel("Timestep")
    ylabel("MWs")
    legend(1:loads, loc="center left", bbox_to_anchor=(1, 0.5))
    gcf() # Needed for IJulia to plot inline
    savefig("Loads.svg")
end

function plotSoC(data,baseMVA=1,timesteps=length(collect(keys(data[:nw]))))
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
    title("Storage Use")
    grid("true")
    xlabel("Timestep")
    ylabel("State of Charge")
    legend(1:storage, loc="center left", bbox_to_anchor=(1, 0.5))

    gcf() # Needed for IJulia to plot inline
    savefig("SoC.svg")
end

function plotStoragePower(data,baseMVA=1,timesteps=length(collect(keys(data[:nw]))))
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
                y[i,t] = (data[:nw][t][:storage][i]["energy"]-data[:nw][t-1][:storage][i]["energy"])*data[:nw][t][:time_elapsed]*baseMVA
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
    title("Storage Power")
    grid("true")
    xlabel("Timestep")
    ylabel("Power Demand MWs")
    legend(1:storage, loc="center left", bbox_to_anchor=(1, 0.5))

    gcf() # Needed for IJulia to plot inline
    savefig("StoragePower.svg")
end
