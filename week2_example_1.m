syms f(x)

f(x) = 2*x + 3

limit(f(x),x,2)

left = limit(f(x),x,2,'left')
right = limit(f(x),x,2,'right')
value_at_that_point = subs(f(x),2)

if(left == right)
    disp("Limit vardır")
    if(value_at_that_point == left)
        disp("Süreklidir")
    else
        disp("Sürekli değildir")
    end
else
    disp("Limit yoktur")
end

