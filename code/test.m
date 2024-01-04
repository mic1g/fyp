
userLimit = var1;
userData = var2;
userNum = var3;
optimal = var4;
demand = optimal(2,:) * -1;
production = optimal(1,:);


y = [production;demand];
x = 1:userNum;
bar(x,y,'stacked');
xlabel('User Index')
ylabel('production/demand cost')
legend('Production','Demand');

T = userData;
demand = optimal(2,:);
for i = 1:userNum
    
    netcost_sharing_game(i) = netCost(production(i),demand(i),T{i,'alpha1'},T{i,'alpha2'},T{i,'beta1'},T{i,'beta2'});
  
end


