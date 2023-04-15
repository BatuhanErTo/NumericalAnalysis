syms x

y = piecewise(x < 0, -1, x > 0, 1);
if(limit(y,x,0,'left') == limit(y,x,0,'right'))
    disp("Limit var")
else
    disp("Limit yoktur")
end

z = 2*x/(x-5);
limit(z,x,-5)
