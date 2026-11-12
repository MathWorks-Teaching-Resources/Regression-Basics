% Load battery data
load BatterySOH.mat t SOH

% Take every 100 points
t = t(1:750:end);
SOH = SOH(1:750:end);
scatter(t,SOH)
save BatterySOH.mat t SOH



%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
