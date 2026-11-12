% Real data for bulgar wheat
% Source: https://www.researchgate.net/publication/43257218_Root-zone_salinity_I_Selecting_a_product-yield_index_and_response_function_for_crop_tolerance
x = [0.98 1.55 2.10 3.12 4.06 5.30 6.04 8.17 9.97 12.10 13.80]';
y = [307 306.9 282.9 234.9 225.4 170.0 111.0 82.6 64.5 19.9 15.0]';
y = y./max(y)
plot(x,y,"o")
fun = @(b,x) 1./(1+(x./b(1)).^exp(b(2)));
b0 = [7 1.5]
mdl = fitnlm(x,y,fun,b0)
xnew = 1:0.01:14;
plot(xnew',predict(mdl,xnew'),"-")
hold on
plot(x,y,"o")
hold off
%%
%for k =1:12:502
rng(457)
mdl2 = fitlm(1:11,x,"quadratic");
x1 = random(mdl2,(0.9:0.7:11)');
weights = 0.75+1.5*rand(size(x1));
weights(1:4) = 10;
y1 = random(mdl,x1,"Weights",weights);
x1(y1>=1)=[];
y1(y1>=1)=[];
plot(x1,y1,"o")
% title(k)
%drawnow
%end
%%
x = (x1)'
y = (y1*295)'
save nonlinearData.mat x y


%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
