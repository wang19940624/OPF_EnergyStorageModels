clear all
%% Create multiperiod files for power model

%% Parameters
% base power model
base_model  = case_ieee123();

% output file name
folder = 'Output_Model/';
fname = 'case_ieee123_storage_';

% number of periods
periods = 500;

% storage elements
storageElements = 1;

% changes for each period
modifier = struct();

fields = {'bus', 'gen', 'gencost', 'branch', 'storage'};

%% Setup output folder

% Specify the folder where the files live.
% Check to make sure that folder actually exists.  Warn user if it doesn't.
if ~isdir(folder)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(errorMessage));
  return;
end
% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(folder, '*.m'); % Change to whatever pattern you need.
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fullFileName = fullfile(folder, baseFileName);
  fprintf(1, 'Now deleting %s\n', fullFileName);
  delete(fullFileName);
end

%% Modifier variables

%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
    bus = [
	1	1	0.160	0.080	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	2	1	0.020	0.010	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	3	1	0.120	0.060	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	4	1	0.100	0.050	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	5	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	6	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	7	1	0.000	0.000	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	8	1	0.020	0.010	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	9	1	0.020	0.010	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	10	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	11	1	0.020	0.010	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	12	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	13	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	14	1	0.075	0.035	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	15	1	0.140	0.100	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	16	1	0.075	0.035	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	17	1	0.120	0.060	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	18	1	0.120	0.060	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	19	1	0.245	0.180	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	20	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	21	1	0.000	0.000	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	22	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	23	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	24	1	0.060	0.030	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	25	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	26	1	0.020	0.010	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	27	1	0.020	0.010	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	28	1	0.080	0.040	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	29	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	30	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	31	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	32	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	33	1	0.000	0.000	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	34	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	35	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	36	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	37	1	0.100	0.050	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	38	1	0.080	0.040	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	39	1	0.140	0.070	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	40	1	0.080	0.040	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	41	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	42	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	43	1	0.080	0.040	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	44	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	45	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	46	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	47	1	0.120	0.060	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	48	1	0.020	0.010	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	49	1	0.060	0.030	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	50	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	51	1	0.105	0.075	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	52	1	0.210	0.150	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	53	1	0.140	0.095	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	54	1	0.040	0.020	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	55	1	0.020	0.010	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	56	3	0.000	0.000	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
];
                                                                        % Change ramp rate here
%  bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
gen = [
	56	3	3	200	-200	1	1	1	200	-200	0	0	0	0	0	0	0	0	0	0	0;
];

rng(1)
variablity = .1;
 modifier.period(1).bus = bus;
 for i =2:periods
     modifier.period(i).bus = bus;
     modifier.period(i).bus(:,3) = max(modifier.period(i-1).bus(:,3)*(1+(variablity/2-variablity*rand())),0);
     modifier.period(i).bus(:,4) = max(modifier.period(i-1).bus(:,4)*(1+(0.05-.1*rand())),0);
 end

 for i =1:periods
     modifier.period(i).gen = gen;
     modifier.period(i).gen(:,17) = 1;
 end


%% Modify and save network
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
    output = strcat(folder,fname,num2str(i));
    display("Saving file: " + output + ".m");
    savecase(output, temp);

    % Append storage information to end of file
    storage(1) ="     %% storage data";
    storage(2) =" % hours;";
    storage(3) ="mpc.time_elapsed = 0.0167";
    storage(4) ="%   storage_bus  energy  energy_rating charge_rating  discharge_rating  charge_efficiency  discharge_efficiency  thermal_rating  qmin  qmax  r  x  standby_loss  status";
    storage(5) ="mpc.storage = [";
    % Flywheel
    storage(6) ="	 11            0.005     0.01          0.1             0.1                 0.9                0.9                   100.0        -50.0 70.0  0.1 0.0	0.05         1;";
    %
    storage(7) ="];";

    fid = fopen(strcat(output,".m"), 'at');
    for k =1:length(storage)
        fprintf(fid,'%s\n',storage(k));
    end
    fclose(fid);


% % Append storage information to end of file
%     storage(1) ="     %% storage data";
%     storage(2) =" % hours;";
%     storage(3) ="mpc.time_elapsed = 1.0";
%     storage(4) ="%   storage_bus  energy  energy_rating charge_rating  discharge_rating  charge_efficiency  discharge_efficiency  thermal_rating  qmin  qmax  r  x  standby_loss  status";
%     storage(5) ="mpc.storage = [";
%
%     for j=1:storageElements
%         storage(5+j) = strcat("  ",num2str(j)," 0.10	 1.0	 1.0	1.0	 0.8	 0.9	 100.0	 -50.0	 70.0	 0.1	 0.0	 0.0	 1;");
%     end
%     storage(6+storageElements) ="];";
%
%     fid = fopen(strcat(output,".m"), 'at');
%     for k =1:length(storage)
%         fprintf(fid,'%s\n',storage(k));
%     end
%     fclose(fid);


end



%for i=1:periods
%    output = strcat(fname,num2str(i));
%    savecase(output, base_model);
%end
%~isempty(modifier.period(i).(fields{j}))
