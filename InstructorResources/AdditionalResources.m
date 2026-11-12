%[text] # Additional Resources
%%
%[text] [⇦ Main Menu](file:../MainMenu.m)
%%
%[text] %[text:anchor:M_5536] ## 1. Linear Regression
%[text] Matches [Linear Regression](file:../Scripts/LinearRegression.m) and [Practice Linear Regression](file:../Scripts/TryRegression.m).
%[text] ### Online Training
%[text] - [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted) - Useful for students who want a quick refresher on MATLAB syntax, scripts, and workspace basics before starting the lesson and practice workflow.
%[text] - [Explore Data with MATLAB Plots](https://matlabacademy.mathworks.com/details/explore-data-with-matlab-plots/otmledp) - Reinforces the plotting and visualization skills used for scatter plots, fitted lines, and predicted points.
%[text] - [Machine Learning Onramp](https://matlabacademy.mathworks.com/details/machine-learning-onramp/machinelearning) - Extends the ideas of model fitting, prediction, and error interpretation introduced in the linear regression scripts. \
%[text] ### Documentation and Examples
%[text] - [`fitlm`](https://www.mathworks.com/help/stats/fitlm.html) - Main workflow reference for fitting simple linear regression models and inspecting coefficients and model summaries.
%[text] - [`predict`](https://www.mathworks.com/help/stats/linearmodel.predict.html) - Shows how to generate one or many predictions from a fitted linear model.
%[text] - [`table`](https://www.mathworks.com/help/matlab/ref/table.html) - Supports the practice script workflow of organizing imported predictor and response data before fitting a model.
%[text] - [`scatter`](https://www.mathworks.com/help/matlab/ref/scatter.html) - Useful for recreating the data visualizations and predicted-point overlays used in the lesson.
%[text] - [`plot`](https://www.mathworks.com/help/matlab/ref/plot.html) - Helpful for drawing fitted lines, confidence-interval views, and other line-based comparisons. \
%[text] ### Key Functions and Apps
%[text] - [`fitlm`](https://www.mathworks.com/help/stats/fitlm.html) - Fits the regression line and exposes coefficient, residual, and summary information.
%[text] - [`predict`](https://www.mathworks.com/help/stats/linearmodel.predict.html) - Computes predicted responses for new input values.
%[text] - [`table`](https://www.mathworks.com/help/matlab/ref/table.html) - Packages imported data into a form that is easy to fit and inspect.
%[text] - [`scatter`](https://www.mathworks.com/help/matlab/ref/scatter.html) - Displays measured data and highlighted predictions.
%[text] - [Regression Learner App](https://www.mathworks.com/help/stats/regression-learner-app.html) - Optional interactive extension for exploring regression models beyond the scripted workflow. \
%%
%[text] %[text:anchor:M_107c] ## 2. Curvilinear Regression
%[text] Matches [Curvilinear Regression](file:../Scripts/CurvilinearRegression.m), [Practice Curvilinear: Polynomial](file:../Scripts/TryCurvilinearPolynomial.m), and [Practice Curvilinear: Linearizable](file:../Scripts/TryCurvilinear.m).
%[text] ### Online Training
%[text] - [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted) - Covers the MATLAB fundamentals needed for importing data, building fits, and plotting transformed variables.
%[text] - [Explore Data with MATLAB Plots](https://matlabacademy.mathworks.com/details/explore-data-with-matlab-plots/otmledp) - Helpful for comparing raw, transformed, semilogy, and loglog views of the same dataset.
%[text] - [How MATLAB Graphics Work](https://matlabacademy.mathworks.com/details/how-matlab-graphics-work/otmlhgw) - Supports the practice scripts that use legends, axes settings, and graphics-property updates while comparing candidate fits. \
%[text] ### Documentation and Examples
%[text] - [`polyfit`](https://www.mathworks.com/help/matlab/ref/polyfit.html) - Core reference for fitting polynomial models of different degrees.
%[text] - [`polyval`](https://www.mathworks.com/help/matlab/ref/polyval.html) - Evaluates fitted polynomial models on original data or dense plotting grids.
%[text] - [`fitlm`](https://www.mathworks.com/help/stats/fitlm.html) - Used after transforming linearizable nonlinear relationships into a linear form.
%[text] - [`semilogy`](https://www.mathworks.com/help/matlab/ref/semilogy.html) - Useful for checking when exponential behavior appears linear on semilog-y axes.
%[text] - [`loglog`](https://www.mathworks.com/help/matlab/ref/loglog.html) - Useful for checking when power-law behavior appears linear on log-log axes.
%[text] - [Access and Modify Plot Properties](https://www.mathworks.com/help/matlab/creating_plots/access-and-modify-property-values.html) - Supports the dot-notation and plot-formatting steps used throughout the practice activities. \
%[text] ### Key Functions and Apps
%[text] - [`polyfit`](https://www.mathworks.com/help/matlab/ref/polyfit.html) - Fits the polynomial models used to compare curved candidate relationships.
%[text] - [`polyval`](https://www.mathworks.com/help/matlab/ref/polyval.html) - Generates the fitted polynomial responses used for visualization.
%[text] - [`fitlm`](https://www.mathworks.com/help/stats/fitlm.html) - Fits transformed linear models for exponential, power, and saturation-style relationships.
%[text] - [`predict`](https://www.mathworks.com/help/stats/linearmodel.predict.html) - Produces transformed-space predictions before converting back to the original scale.
%[text] - [`semilogy`](https://www.mathworks.com/help/matlab/ref/semilogy.html) - Highlights exponential structure in engineering data.
%[text] - [`loglog`](https://www.mathworks.com/help/matlab/ref/loglog.html) - Highlights power-law structure in engineering data. \
%%
%[text] %[text:anchor:M_207c] ## 3. Multiple Regression
%[text] Matches [Multiple Regression](file:../Scripts/MultipleRegression.m) and [Practice Multiple](file:../Scripts/TryMultiple.m).
%[text] ### Online Training
%[text] - [MATLAB Onramp](https://matlabacademy.mathworks.com/details/matlab-onramp/gettingstarted) - Provides the MATLAB basics needed for table-based workflows, plotting, and model evaluation.
%[text] - [Machine Learning Onramp](https://matlabacademy.mathworks.com/details/machine-learning-onramp/machinelearning) - Reinforces regression-model fitting, prediction, and performance assessment with multiple predictors.
%[text] - [Regression Methods with Machine Learning](https://matlabacademy.mathworks.com/details/regression-methods-with-machine-learning/otmlrmml) - Extends the module into broader regression-model evaluation and comparison workflows. \
%[text] ### Documentation and Examples
%[text] - [`fitlm`](https://www.mathworks.com/help/stats/fitlm.html) - Main reference for fitting multiple linear regression models from arrays, matrices, or tables.
%[text] - [`anova`](https://www.mathworks.com/help/stats/linearmodel.anova.html) - Useful for reviewing overall model significance after fitting the regression model.
%[text] - [`histogram`](https://www.mathworks.com/help/releases/R2026b/matlab/ref/matlab.graphics.chart.primitive.histogram.html) - Supports the residual-distribution checks used when assessing normality.
%[text] - [`table`](https://www.mathworks.com/help/matlab/ref/table.html) - Helps organize multi-predictor datasets before fitting and diagnostics.
%[text] - [Visualize and Assess Model Performance in Regression Learner](https://www.mathworks.com/help/stats/assess-model-performance-in-regression-learner.html) - Extends the script’s residual and model-assessment discussions with more diagnostic views. \
%[text] ### Key Functions and Apps
%[text] - [`fitlm`](https://www.mathworks.com/help/stats/fitlm.html) - Fits the multiple regression model and exposes coefficients, fitted values, and residuals.
%[text] - [`anova`](https://www.mathworks.com/help/stats/linearmodel.anova.html) - Summarizes model-level significance after fitting.
%[text] - [`predict`](https://www.mathworks.com/help/stats/linearmodel.predict.html) - Generates fitted responses for new observations once the model is built.
%[text] - [`table`](https://www.mathworks.com/help/matlab/ref/table.html) - Stores response and predictor variables in a form that works cleanly with regression functions.
%[text] - [`histogram`](https://www.mathworks.com/help/releases/R2026b/matlab/ref/matlab.graphics.chart.primitive.histogram.html) -  Helps inspect residual distributions when checking model assumptions.
%[text] - [Regression Learner App](https://www.mathworks.com/help/stats/regression-learner-app.html) - Optional interactive extension for comparing regression models and diagnostics. \
%[text] [⇦ Return to the Main Menu](file:../MainMenu.m)


%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
