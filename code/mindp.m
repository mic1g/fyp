function Energy_sharing_game = mindp(userNum, randomTable)
%sample code to find the (p, d) of a prosumer that minimizes its objective

% price, which is known from the last iteration
lambda = 0;
newLambda = 2;

% other parameters
a = 100;
k = 0;
%greater the tolerance, more iteration it will be
tolerance = 0.01;

%only get data, not run function
T = randomTable;


while abs(newLambda - lambda) > tolerance
k = k + 1;
lambda = newLambda;
for i = 1:userNum
   
for i = 1:userNum
    x = solveoptimization(T{i,'plow'}, T{i,'dlow'},T{i,'phigh'},T{i,'dhigh'},T{i,'alpha1'},T{i,'alpha2'},T{i,'beta1'},T{i,'beta2'}, a, userNum, newLambda);
    
    p(i) = x(1);
    d(i) = x(2);
    
    %output result
    bit(i) = d(i) - p(i) + a*lambda;
  
end

end
bitSum =sum( bit, 'all');
newLambda = bitSum/(a*userNum);

end

Energy_sharing_game = [p;d];

end
