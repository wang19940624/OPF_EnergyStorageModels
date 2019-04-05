

A = csvread('Gen_Cost_v_storage_energy.txt');
plot(A(:,1),A(:,2))
title("Sensitivity to Storage Size of flywheel with 10:1 Power:Energy")
xlabel("Flyhweel Storage Size MWh")
ylabel("Cost of Energy for simulation time-period")
savefig("Storage_Sweep")
close(gcf)