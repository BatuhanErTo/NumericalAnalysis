% türev örneği
syms f(x)

f(x) = 2*x+3;
diff(f(x),x,2)

syms x

y = piecewise(x<2,3*x-1,x>=2,x^2+1)
diff(y,x)
