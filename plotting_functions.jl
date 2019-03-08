
# Plotting code
using PyCall, PyPlot
function plotGeneration(ref)
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    timesteps = length(collect(keys(ref[:nw])))
    generators = length(collect(keys(ref[:nw][1][:gen])))
    x = zeros(generators, timesteps)
    y = zeros(generators, timesteps)

    for i=1:generators
        for t in sort(collect(keys(ref[:nw])))
            x[i,t] = t
            y[i,t] = getvalue(pg[t,i])*mp_data["baseMVA"]
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure("Generation)",figsize=(8,8))
    b = bar(x[1,:],y[1,:], align="center",alpha=0.4)
    for i = 2:generators
        b = bar(x[i,:],y[i,:], bottom=sum(y[k,:] for k=1:i-1), align="center",alpha=0.4)
    end
    axis("tight")
    title("Generation $(1)")
    grid("true")
    xlabel("Timestep")
    ylabel("MWs")
    legend(1:generators, loc="center left", bbox_to_anchor=(1, 0.5))
    gcf() # Needed for IJulia to plot inline
    savefig("Generation.svg")
end

function plotDemand(ref)
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    timesteps = length(collect(keys(ref[:nw])))
    loads = length(collect(keys(ref[:nw][1][:load])))
    x = zeros(loads, timesteps)
    y = zeros(loads, timesteps)

    for i=1:loads
        for t in sort(collect(keys(ref[:nw])))
            x[i,t] = t
            y[i,t] = ref[:nw][t][:load][i]["pd"]*mp_data["baseMVA"]
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure("Load)",figsize=(8,8))
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

function plotSoC(ref)
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    timesteps = length(collect(keys(ref[:nw])))
    storage = length(collect(keys(ref[:nw][1][:storage])))
    x = zeros(storage, timesteps)
    y = zeros(storage, timesteps)

    for i=1:storage
        for t in sort(collect(keys(ref[:nw])))
            x[i,t] = t
            y[i,t] = getvalue(es[t,i])/ref[:nw][t][:storage][i]["energy_rating"]
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure("SoC",figsize=(8,8))
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

function plotStoragePower(ref)
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
    timesteps = length(collect(keys(ref[:nw])))
    storage = length(collect(keys(ref[:nw][1][:storage])))
    x = zeros(storage, timesteps)
    y = zeros(storage, timesteps)

    for i=1:storage
        for t in sort(collect(keys(ref[:nw])))
            x[i,t] = t
            y[i,t] = getvalue(ps[t,i])*mp_data["baseMVA"]
        end
    end

    ################
    ##  Bar Plot  ##
    ################
    fig = figure("Storage Power",figsize=(8,8))
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
