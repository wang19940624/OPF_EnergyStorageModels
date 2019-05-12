using PyCall, PyPlot

function plotBT()
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
        ################
        ##  Scatter Plot  ##
        ################
        fig = figure(figsize=(8,8))

        #######################
        ## Operating Boundry ##
        #######################
        Erating = 1
        Prating = 1

        x1 = range(0, stop=0, length=10)
        y1 = range(-Prating,stop=Prating,length=10)
        x2 = range(0, stop=Erating, length=10)
        y2 = range(Prating, stop=Prating, length=10)
        x3 = range(0, stop=Erating, length=10)
        y3 = range(-Prating, stop=-Prating, length=10)
        x4 = range(Erating, stop=Erating, length=10)
        y4 = range(-Prating, stop=Prating, length=10)

        plot(x1,y1,x2,y2,x3,y3,x4,y4,color="red")

        ####################
        ## Plot Formating ##
        ####################
        axis("tight")
        title("Storage Operating Limits")
        grid("True")
        xlabel("Energy Storage")
        ylabel("Power Demand MWs")
        ax = gca()
        ax.set_xlim([-0.5,1.5]);
        ax.set_ylim([-1.5,1.5]);

        gcf() # Needed for IJulia to plot inline
        rm(string("BT_Boundry.png"),force=true)
        savefig(string("BT_Boundry.png"))
        close("all")
end

function plotFW()
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
        ################
        ##  Scatter Plot  ##
        ################
        fig = figure(figsize=(8,8))

        #######################
        ## Operating Boundry ##
        #######################
        Erating = 1
        Prating = 1

        x1 = range(0.25*Erating, stop=0.25*Erating, length=10)
        y1 = range(-Prating,stop=Prating,length=10)
        x2 = range(0.25*Erating, stop=Erating, length=10)
        y2 = range(Prating, stop=Prating, length=10)
        x3 = range(0.25*Erating, stop=Erating, length=10)
        y3 = range(-Prating, stop=-Prating, length=10)
        x4 = range(Erating, stop=Erating, length=10)
        y4 = range(-Prating, stop=Prating, length=10)

        plot(x1,y1,x2,y2,x3,y3,x4,y4,color="red")

        ####################
        ## Plot Formating ##
        ####################
        axis("tight")
        title("Storage Operating Limits")
        grid("True")
        xlabel("Energy Storage")
        ylabel("Power Demand MWs")
        ax = gca()
        ax.set_xlim([-0.5,1.5]);
        ax.set_ylim([-1.5,1.5]);

        gcf() # Needed for IJulia to plot inline
        rm(string("FW_Boundry.png"),force=true)
        savefig(string("FW_Boundry.png"))
        close("all")
end

function plotFWTorque()
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
        ################
        ##  Scatter Plot  ##
        ################
        fig = figure(figsize=(8,8))

        #######################
        ## Operating Boundry ##
        #######################
        Erating = 1
        Prating = 1*2
        omega =  collect(LinRange(0.5,Erating,25))
        E = (omega).^2
        Phigh = omega*Prating
        maxE = range(maximum(E),stop=maximum(E), length=10)
        maxP = range(-maximum(Phigh), stop=maximum(Phigh), length=10)
        plot(E,Phigh,E,-Phigh,maxE,maxP, color="green")

        energy = 0.25*maximum(E)
        power = sqrt(energy)


        x1 = range(energy, stop=energy, length=10)
        y1 = range(-power,stop=power,length=10)
        x2 = range(energy, stop=maximum(E), length=10)
        y2 = range(power, stop=power, length=10)
        x3 = range(energy, stop=maximum(E), length=10)
        y3 = range(-power, stop=-power, length=10)
        x4 = range(maximum(E),stop=maximum(E), length=10)
        y4 = range(-power, stop=power, length=10)


        Erating = 1
        Prating = 1

        x1 = range(0.25*Erating, stop=0.25*Erating, length=10)
        y1 = range(-Prating,stop=Prating,length=10)
        x2 = range(0.25*Erating, stop=Erating, length=10)
        y2 = range(Prating, stop=Prating, length=10)
        x3 = range(0.25*Erating, stop=Erating, length=10)
        y3 = range(-Prating, stop=-Prating, length=10)
        x4 = range(Erating, stop=Erating, length=10)
        y4 = range(-Prating, stop=Prating, length=10)

        plot(x1,y1,x2,y2,x3,y3,x4,y4,color="red")

        ####################
        ## Plot Formating ##
        ####################
        axis("tight")
        title("Storage Operating Limits")
        grid("True")
        xlabel("Energy Storage")
        ylabel("Power Demand MWs")
        ax = gca()
        ax.set_xlim([-0.5,1.5]);
        ax.set_ylim([-2.5,2.5]);

        gcf() # Needed for IJulia to plot inline
        rm(string("FWTorque_Boundry.png"),force=true)
        savefig(string("FWTorque_Boundry.png"))
        close("all")
end

function plotFWZero()
    ioff() # Interactive plotting OFF, necessary for inline plotting in IJulia
        ################
        ##  Scatter Plot  ##
        ################
        fig = figure(figsize=(8,8))

        #######################
        ## Operating Boundry ##
        #######################
        Erating = 1
        Prating = 1*2
        omega =  collect(LinRange(0.00,Erating,25))
        E = (omega).^2
        Phigh = omega*Prating
        maxE = range(maximum(E),stop=maximum(E), length=10)
        maxP = range(-maximum(Phigh), stop=maximum(Phigh), length=10)
        plot(E,Phigh,E,-Phigh,maxE,maxP, color="green")

        energy = 0.25*maximum(E)
        power = sqrt(energy)


        x1 = range(energy, stop=energy, length=10)
        y1 = range(-power,stop=power,length=10)
        x2 = range(energy, stop=maximum(E), length=10)
        y2 = range(power, stop=power, length=10)
        x3 = range(energy, stop=maximum(E), length=10)
        y3 = range(-power, stop=-power, length=10)
        x4 = range(maximum(E),stop=maximum(E), length=10)
        y4 = range(-power, stop=power, length=10)


        Erating = 1
        Prating = 1

        x1 = range(0.25*Erating, stop=0.25*Erating, length=10)
        y1 = range(-Prating,stop=Prating,length=10)
        x2 = range(0.25*Erating, stop=Erating, length=10)
        y2 = range(Prating, stop=Prating, length=10)
        x3 = range(0.25*Erating, stop=Erating, length=10)
        y3 = range(-Prating, stop=-Prating, length=10)
        x4 = range(Erating, stop=Erating, length=10)
        y4 = range(-Prating, stop=Prating, length=10)

        plot(x1,y1,x2,y2,x3,y3,x4,y4,color="red")

        ####################
        ## Plot Formating ##
        ####################
        axis("tight")
        title("Storage Operating Limits")
        grid("True")
        xlabel("Energy Storage")
        ylabel("Power Demand MWs")
        ax = gca()
        ax.set_xlim([-0.5,1.5]);
        ax.set_ylim([-2.5,2.5]);

        gcf() # Needed for IJulia to plot inline
        rm(string("FWZero_Boundry.png"),force=true)
        savefig(string("FWZero_Boundry.png"))
        close("all")
end
