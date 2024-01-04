%Centralized operation
    lb = [0; 5; 0; 7; 0; 10];
    ub = [20, 15, 25, 18, 30, 25];
   userLimit = var1;
userData = var2;
userNum = var3;
optimal = var4;
demand = optimal(2,:) * -1;
production = optimal(1,:);


T = userData;

j = 1;
for i = 1:userNum
    lb(j) = [T{i,'plow'}];
    lb(j+1) = [T{i,'dlow'}];
    ub(j) = T{i,'phigh'};
    ub(j+1) = T{i,'dhigh'};
    j = j + 2;
end


    
  for i = 1:userNum
    x = solveoptimization_centralized(lb,ub, T{i,'alpha1'},T{i,'alpha2'},T{i,'beta1'},T{i,'beta2'}, userNum);
    
    p(i) = x(1);
    d(i) = x(2);
   
end
