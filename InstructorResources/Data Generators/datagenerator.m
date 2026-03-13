% Generate random dataset for linear regression model
numPoints = 100; % Number of data points
x = linspace(0, 10, numPoints)'; % Independent variable
trueA1 = 2; % True slope
trueA0 = 5; % True intercept
noiseLevel = 5; % Increased noise level for larger confidence interval
y = trueA1 * x + trueA0 + noiseLevel * randn(numPoints, 1); % Dependent variable with increased noise

% Save the generated dataset to a .mat file for later use
save("RandomLinearData.mat","x","y");