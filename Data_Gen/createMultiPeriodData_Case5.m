clear all
%% Create multiperiod files for power model

% base power model
base_model  = case5();

% output file name
fname = './Case_Studies/ModelData/case5_';

% number of periods
periods = 50;

% storage elements
storageElements = 2;

% changes for each period
modifier = struct();

fields = {'bus', 'gen', 'gencost', 'branch', 'storage'};

%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	2	0	0	0	0	1	1	0	230	1	1.1	0.9;
	2	1	300	98.61	0	0	1	1	0	230	1	1.1	0.9;
	3	2	300	98.61	0	0	1	1	0	230	1	1.1	0.9;
	4	3	400	131.47	0	0	1	1	0	230	1	1.1	0.9;
	5	2	0	0	0	0	1	1	0	230	1	1.1	0.9;
];

%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	200     0	30      -30     1	100	1	40	0	0	0	0	0	0	0	0	0	0	0	0;
	1	300     0	127.5	-127.5	1	100	1	170	0	0	0	0	0	0	0	0	0	0	0	0;
	3	350 	0	390     -390	1	100	1	520	0	0	0	0	0	0	0	0	0	0	0	0;
	4	0       0	150     -150	1	100	1	200	0	0	0	0	0	0	0	0	0	0	0	0;
	5	500 	0	450     -450	1	100	1	600	0	0	0	0	0	0	0	0	0	0	0	0;
];

rng(0)

modifier.period(1).bus = mpc.bus;
for i =2:periods
     modifier.period(i).bus = mpc.bus;
     modifier.period(i).bus(:,3) = max(modifier.period(i-1).bus(:,3)*(1+(0.1-.2*rand())),0);
     modifier.period(i).bus(:,4) = max(modifier.period(i-1).bus(:,4)*(1+(0.1-.2*rand())),0);
end

for i =1:periods
    modifier.period(i).gen = mpc.gen;
    modifier.period(i).gen(:,17) = 0.01;
end


for i=1:periods
    temp = base_model;
    if i <= length(modifier.period)
        if ~isempty(modifier.period(i))
            for j = 1:length(fields)
                if isfield(modifier.period(i), fields(j))
                    if ~isempty(modifier.period(i).(fields{j}))
                        temp.(fields{j}) = modifier.period(i).(fields{j});
                    end
                end            
            end
        end
    end
    output = strcat(fname,num2str(i));
    display("Saving file: " + output + ".m");
    savecase(output, temp);
    
    % Append storage information to end of file
    storage(1) ="     %% storage data";
    storage(2) =" % hours;";
    storage(3) ="mpc.time_elapsed = .1";
    storage(4) ="%   storage_bus  energy  energy_rating charge_rating  discharge_rating  charge_efficiency  discharge_efficiency  thermal_rating  qmin  qmax  r  x  standby_loss  status";
    storage(5) ="mpc.storage = [";
    % Flywheel
    storage(6) ="	 2            5.0      10.0          5.0             5.0                 0.8                0.9             100.0        -50.0 70.0  0.1 0.0	0.05         1;";
    storage(7) ="	 5            5.0      10.0          5.0             5.0                 0.8                0.9             100.0        -50.0 70.0  0.1 0.0	0.05         1;";
    %
    storage(8) ="];";

    fid = fopen(strcat(output,".m"), 'at');    
    for k =1:length(storage)
        fprintf(fid,'%s\n',storage(k));
    end 
    fclose(fid);

end



%for i=1:periods
%    output = strcat(fname,num2str(i));
%    savecase(output, base_model);
%end
%~isempty(modifier.period(i).(fields{j}))

