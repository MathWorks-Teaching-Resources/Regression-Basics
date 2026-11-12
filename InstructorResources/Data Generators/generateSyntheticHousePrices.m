rng(0)
houseprice = readtable("housprice.xlsx")
x = houseprice.x1;
y = houseprice.y;
xbar = mean(x);
ybar = mean(y);

a1 = sum((x-xbar).*(y ...
    -ybar))./sum((x-xbar).^2)
a0 = ybar - a1.*xbar
sigma = sqrt(sum((y - (a0+a1.*x)).^2)./(length(x)))./1.5

X1 = randn(100,1).*1000 + 2000;
mu = a0 + a1.*X1;
Y = normrnd(mu,sigma);
figure
plot(X1,Y,"bo")
hold on
plot(x,y,"ro")
hold off

x =  houseprice.x2;
y = houseprice.y;
xbar = mean(x);
ybar = mean(y);

a1 = sum((x-xbar).*(y-ybar))./sum((x-xbar).^2)
a0 = ybar - a1.*xbar
sigma = sqrt(sum((y - (a0+a1.*x)).^2)./(length(x)))./5

X2 = randi(12,[100,1]);
mu = a0 + a1.*X2;
Ynew = normrnd(mu,sigma);
figure
plot(X2,Ynew,"bo")
hold on
plot(x,y,"ro")
hold off
%%
T1 = table(X1,Y);
T2 = table(X2,Ynew);
T1 = sortrows(T1,2);
T2 = sortrows(T2,2);
T = [];
for k = 1:height(T1)
    idx = abs(T2.Ynew-T1.Y(k)) <= 0.005*(T1.Y(k));
    if any(idx)
        T = [T;[T2{find(idx,1,"first"),:},T1{k,:}]];
    end
end
T = array2table(T,'VariableNames',{'X1','Y1','X2','Y2'})

T = normalize(T);
fitlm([T.X1,T.X2],T.Y1,"interactions")
fitlm(T.X1,T.Y1)
fitlm(T.X2,T.Y1)

plot(T.X2,T.Y1,"o")
plot(T.X1,T.Y1,"o")
%%
Mdl = fitlm([T.X1,T.X2],T.Y1,"interactions")
coeffs = Mdl.Coefficients.Estimate
  %[control:button:149e]{"position":[1,2]}

plotMultiFit(T.X1,T.X2,T.Y1,coeffs);
view(30,45)
%%

%%
%[text] ## Help us Improve
%[text] [Share your feedback](<matlab: ShareFeedback>) to help us improve this module.

function yhat = plotMultiFit(x1,x2,y,coeffs)

% Split the coefficients into individual variables and estimate y.
[a,b,c,d] = deal(coeffs(2),coeffs(3),coeffs(4),coeffs(1));
yhat = a.*x1 + b.*x2 + c.*x1.*x2 + d;

% Plot
scatter3(x1,x2,y);
xlim([min(x1)-0.1,max(x1)+0.1]);
ylim([min(x2)-0.1,max(x2)+0.1]);
zlim([min(y)-0.1,max(y)+0.1]);
[X1,X2] = meshgrid(xlim,ylim);
hold on
surf(X1,X2,a.*X1 + b.*X2 + c.*X1.*X2 + d,"FaceAlpha", 0.4,"FaceColor",[1 0.5 0.5],"EdgeColor","none");
hold off
% Annotate
title("Multiple linear model")
dispPlane = sprintf("\nPlane fit"+"\ny = " + a + "x_{1} + " + b + "x_{2} + " + c + "x_{1}x_{2} + " + d);
legend("Data samples",dispPlane,"Location","northeast");
view([-150 20])
xlabel('x_{1}'), ylabel('x_{2}'), zlabel("y")

end


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
%[control:button:149e]
%   data: {"label":"Run","run":"Section"}
%---
