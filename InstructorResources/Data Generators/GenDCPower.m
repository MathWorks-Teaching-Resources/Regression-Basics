% Read CSV into a table and keep only Temp and Prod variables
T = readtable('DCPowerData.csv');

% If variables are named differently (case variations), attempt to find matching names
vars = T.Properties.VariableNames;
matchTrafficLoad = find(strcmpi(vars,"TrafficLoad"),1);
matchActiveModules = find(strcmpi(vars,"ActiveModules"),1);
matchAmbientTemp = find(strcmpi(vars,"AmbientTemp"),1);
matchDCPower = find(strcmpi(vars,"DCPower"),1);

if isempty(matchTrafficLoad) || isempty(matchActiveModules)
    error('Could not find variables named TrafficLoad", "ActiveModules", "AmbientTemp", & ,"DCPower"  (case-insensitive) in DCPowerData.csv.');
end

% Create table with exactly the two requested variables and assign to DCPowerData
DCPowerData = T(:, [matchTrafficLoad, matchActiveModules matchAmbientTemp matchDCPower]);

% Convert table columns to variables named Temp and Prod
TrafficLoad = DCPowerData{:,1};
ActiveModules = DCPowerData{:,2};
AmbientTemp = DCPowerData{:,3};
DCPower = DCPowerData{:,4};

% Save variables Temp and Prod into a MAT-file named Bioreactor.mat
save("DCPowerData.mat","TrafficLoad","ActiveModules","AmbientTemp", "DCPower");


%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
