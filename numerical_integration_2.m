syms x;

f = exp(x)*cos(x);

% first derivative
df = diff(f)
df = diff(f,1)

% x = 2
double(subs(df,x,2))
vpa(subs(df,x,2),3)

% second derivative
ddf = diff(diff(f))
ddef = diff(f,2)
