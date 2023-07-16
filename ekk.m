% solve Ax=b

x=[0:3]
y=[1 3 4 4]

A=[x' ones(size(x'))]
b=y'

%linsolve
coef=linsolve(A'*A, A'*b)
er=norm(b-A*coef)
