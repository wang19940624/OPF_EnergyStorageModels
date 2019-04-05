

A = csvread('Gen_Cost_v_Losses.txt');
plot(A(:,1),A(:,2))
title("Sensitivity to Efficiency of flywheel")
xlabel("Flyhweel Standby Loss %/hr")
ylabel("Cost of Energy for simulation time-period")
savefig("Efficiency_Sweep")
close(gcf)