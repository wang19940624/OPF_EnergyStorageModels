clear all
%% Create multiperiod files for power model

% base power model
base_model  = case5();

% output file name
fname = 'ModelData/case5_storage_';

% number of periods
periods = 15;

% changes for each period
modifier = struct();

fields = {'bus', 'gen', 'gencost', 'branch', 'storage'};

%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
    Low_power = [
        1	2	000	0	0	0	1	1	0	230	1	1.1	0.9;
        2	1	300	98.61	0	0	1	1	0	230	1	1.1	0.9;
        3	2	300	98.61	0	0	1	1	0	230	1	1.1	0.9;
        4	3	400	131.47	0	0	1	1	0	230	1	1.1	0.9;
        5	2	000	0	0	0	1	1	0	230	1	1.1	0.9;
    ];
    
    High_power = [
        1	2	200	0	0	0	1	1	0	230	1	1.1	0.9;
        2	1	300	98.61	0	0	1	1	0	230	1	1.1	0.9;
        3	2	400	98.61	0	0	1	1	0	230	1	1.1	0.9;
        4	3	500	131.47	0	0	1	1	0	230	1	1.1	0.9;
        5	2	200	0	0	0	1	1	0	230	1	1.1	0.9;
    ];
    
    modifier.period(1).bus = Low_power;
    modifier.period(2).bus = Low_power;
    modifier.period(3).bus = Low_power;
    modifier.period(4).bus = Low_power;
    modifier.period(5).bus = High_power;
    modifier.period(6).bus = High_power; 
    modifier.period(7).bus = Low_power;
    modifier.period(8).bus = High_power;
    modifier.period(9).bus = Low_power;
    modifier.period(10).bus = Low_power;
    modifier.period(11).bus = Low_power;
    modifier.period(12).bus = High_power; 
    modifier.period(13).bus = High_power; 
    modifier.period(14).bus = Low_power;
    modifier.period(15).bus = Low_power;
    

for i=1:periods
    temp = base_model;
    if i < length(modifier.period)
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
    storage(3) ="mpc.time_elapsed = 1.0";
    storage(4) ="%   storage_bus  energy  energy_rating charge_rating  discharge_rating  charge_efficiency  discharge_efficiency  thermal_rating  qmin  qmax  r  x  standby_loss  status";
    storage(5) ="mpc.storage = [";
    storage(6) ="	 3	 20.0	 500.0	 200.0	100.0	 0.8	 0.9	 100.0	 -50.0	 70.0	 0.1	 0.0	 0.0	 1;";
    storage(7) ="	 1	 30.0	 800.0	 200.0	100.0	 0.9	 0.8	 100.0	 -50.0	 70.0	 0.1	 0.0	 0.0	 1;";
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

