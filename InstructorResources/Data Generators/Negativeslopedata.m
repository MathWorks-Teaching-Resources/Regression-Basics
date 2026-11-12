% Create a dataset to simulate a negative slope linear regression
n = 100; % Number of data points
x = linspace(0,10,n); % Independent variable
slope = -2; % Negative slope
intercept = 15; % Intercept
noise = randn(1, n); % Random noise
y = slope * x + intercept + noise; % Dependent variable with noise

save("RandomLinearDataB.mat","x","y");


%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
