function x = netCost(p,d,alpha1,alpha2,beta1,beta2)
x = alpha1*(p^2) + alpha2*(p) - beta1*(d^2) - beta2*(d);
end