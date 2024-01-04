function x = solveoptimization_centralized(lb, ub, alpha1, alpha2, beta1, beta2, userNum)

for i = 1: userNum
    %sub all p and d first, then fmincon()
    objfun = @(x)alpha1*x(1)^2 + alpha2*x(1) - beta1*x(2)^2 - beta2*x(2);
    
    a = [1,-1];
    Aeq = repmat(a,1,userNum);

x = fmincon(objfun,zeros(userNum*2,1),[],[],Aeq,[0],lb,ub);
end


