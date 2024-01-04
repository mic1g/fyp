function x = randomTable(userNum,minmax)

rng(sum(10*clock),'twister');
%'plow', 'dlow', 'phigh', 'dhigh' ,'alpha1' , 'alpha2' ,'beta1', 'beta2'
       


rR = array2table(minmax, 'VariableNames', {'plow', 'dlow', 'phigh', 'dhigh' ,'alpha1' , 'alpha2' ,'beta1', 'beta2'}, 'rowNames', {'min','max'});


%rand([20,1])*rR{'max',dlow'} - rR{'min', 'dhigh'}) + rR{'min','dhigh'};
parameter1 = rand([userNum,1])*(rR{'max','plow'}-rR{'min','plow'}) + rR{'min','plow'};
parameter2 = rand([userNum,1])* (rR{'max','dlow'}-rR{'min','dlow'}) + rR{'min','dlow'};
parameter3 = rand([userNum,1])* (rR{'max','phigh'}-rR{'min','phigh'}) + rR{'min','phigh'};
parameter4 = rand([userNum,1])* (rR{'max','dhigh'}-rR{'min','dhigh'}) + rR{'min','dhigh'};
parameter5 = rand([userNum,1])* (rR{'max','alpha1'}-rR{'min','alpha1'}) + rR{'min','alpha1'};
parameter6 = rand([userNum,1])* (rR{'max','alpha2'}-rR{'min','alpha2'}) + rR{'min','alpha2'};
parameter7 = rand([userNum,1])* (rR{'max','beta1'}-rR{'min','beta1'}) + rR{'min','beta1'};
parameter8 = rand([userNum,1])* (rR{'max','beta2'}-rR{'min','beta2'}) + rR{'min','beta2'};

data = [parameter1 parameter2 parameter3 parameter4 parameter5 parameter6 parameter7 parameter8];
x = array2table(data, 'VariableNames', {'plow', 'dlow', 'phigh', 'dhigh' ,'alpha1' , 'alpha2' ,'beta1', 'beta2'});
end