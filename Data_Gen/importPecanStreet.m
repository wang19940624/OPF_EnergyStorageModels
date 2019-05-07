clear all

%% Create multiperiod files for power model

%% Parameters
% base power model
base_model  = case_ieee123();

% load data
load_fn = 'dataport-export (3).csv';

% output file name
folder = 'Output_Model/';
fname = 'case_ieee123_storage_';

% number of periods
steps = 10; %determined by min of this or pecan street data

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

%% Read in Pecan Street data
out = readtable(load_fn, 'Format','%s%f%f');
out = table2cell(out);

dates = unique({out{:,1}});
ids = unique([out{:,2}]);
loads = zeros(length(dates),length(ids));


for i = 1: length(out)
    date = out(i,1);
    id = out(i,2);
    load = out(i,3);
    
    index1 =  find(strcmp(dates, date));
    index2 = find(ids == [id{:}]);
    loads(index1,index2) = [load{:}]; 
    if loads(index1,index2) == 0
        loads(index1,index2) = 1e-10;
    end
end

periods = min(steps, size(loads,1));

%% Modifier variables
%	bus_i	type	Pd	Qd	    Gs	  Bs  area	Vm	Va	baseKV	zone	Vmax	Vmin
bus = [1	1	0.160	0.080	0.000	0.000	1	1	0	4.16	1	1.2	0.8	];
buses = zeros(size(loads,2),13);
for i = 1: size(loads,2)
    buses(i,:) = bus;
    buses(i,1) = i;
    if i == 1
        buses(i,2) = 3;
    end
end
                                                                            % Change ramp rate here
%  bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
gen = [
	1	17.0680	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	0	0	0	0	0;
];

%          fbus	tbus	r           x               b        rateA	rateB	rateC	ratio	angle	status	angmin	angmax
branch = [	1	2	0.0013398623	0.0027450827	3.02770271595392E-008	100	100	100	0	0	1	-80	80	];
branches = zeros(size(loads,2),13);
for i = 1:size(loads,2)
   branches(i,:) = branch;
   if  i==1
       branches(i,1) = size(loads,2);
       branches(i,2) = 1;
   else
       branches(i,1) = i-1;
       branches(i,2) = i;
   end
end
    


 modifier.period(1).bus = buses;
 for i =1:periods
     modifier.period(i).bus = buses;
     modifier.period(i).bus(:,3) = loads(i,:)';
     modifier.period(i).bus(:,4) = (loads(i,:)*.5)';
 end

 for i =1:periods
     modifier.period(i).gen = gen;
     modifier.period(i).gen(:,17) = 10;
 end

 
for i =1:periods
     modifier.period(i).branch = branches;
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
    storage(6) ="	 5            0.05     0.1          1             1                 0.9                0.9                   100.0        -50.0 70.0  0.1 0.0	0.05         1;";
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

