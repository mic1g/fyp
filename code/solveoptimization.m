function x = solveoptimization(plow,dlow,phigh,dhigh,alpha1,alpha2,beta1,beta2, a, I, newLambda)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
objfun = @(x)alpha1*x(1)^2 + alpha2*x(1) - beta1*x(2)^2 - beta2*x(2) + (x(2)-x(1))^2/(2*a*(I-1)) + newLambda*(x(2)-x(1));
x = fmincon(objfun,[0;0],[],[],[],[],[plow;dlow], [phigh,dhigh]);
end