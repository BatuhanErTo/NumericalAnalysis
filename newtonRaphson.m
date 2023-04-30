syms x;
f(x) = x^2-2*x-3;
derivative = diff(f(x));
real_root = solve(f(x));
real_root1 = real_root(1,1)
real_root2 = real_root(2,1)

x0 = 0; %initial value
tolerance = 10^-2;

for i = 1 : 100
    nextRoot = (x0 - (f(x0)/subs(derivative,x0)))
    %approximate absolute relative error
    appError = abs((nextRoot-x0)/nextRoot)
    %absolute relative error
    absError = abs((real_root1-x0)/real_root1)
    if(appError <= tolerance)
        fprintf("%d iteration,  %f error with %f root",i,appError,nextRoot)
        break;
    end
    x0 = nextRoot
end
