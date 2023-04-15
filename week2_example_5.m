% integral örneği
syms f(x)

f(x) = 5*x + 123;

int(f(x))
int(f(x),12,123)
int(int(f(x)))
