syms x;
f(x) = x^2-2*x-3;
real_root = solve(f(x));
real_root1 = real_root(1,1)
real_root2 = real_root(2,1)

x0 = 0; %initial value
x1 = 5;
tolerance = 10^-2;

for i=1:100
    newRoot = (x1 - f(x1)*(x1-x0)/(f(x1)-f(x0)));
    relativeError = abs((newRoot - x1)/newRoot);
    if(relativeError<=tolerance)
        fprintf("Root : %d ,    Error : %f",newRoot,relativeError)
        break;
    end
    x0 = x1;
    x1 = newRoot;
end
