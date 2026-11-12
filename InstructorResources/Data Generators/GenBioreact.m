% Read CSV into a table and keep only Temp and Prod variables
T = readtable('Bioreactor.csv');

% If variables are named differently (case variations), attempt to find matching names
vars = T.Properties.VariableNames;
matchTemp = find(strcmpi(vars,'Temp'),1);
matchProd = find(strcmpi(vars,'Prod'),1);

if isempty(matchTemp) || isempty(matchProd)
    error('Could not find variables named ''Temp'' and ''Prod'' (case-insensitive) in Bioreactor.csv.');
end

% Create table with exactly the two requested variables and assign to Bioreactor
Bioreactor = T(:, [matchTemp, matchProd]);

% Convert table columns to variables named Temp and Prod
Temp = Bioreactor{:,1};
Prod = Bioreactor{:,2};

% Save variables Temp and Prod into a MAT-file named Bioreactor.mat
save('Bioreactor.mat','Temp','Prod');


%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
