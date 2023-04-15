syms c

f(c) = 9.8*68.1*(1-exp(-10*c/68.11))/c-40;
real_root = double(solve(f(c)));

% başlangıç değerleri
a = 12;
b = 16;

Fa = double(f(a));
Fb = double(f(b));
imax = 100;
tolerans_value = 10^-5; % 10e-6 => other representation
if(Fa*Fb>0)
    disp("işaretleri aynı");
else
    fprintf("iteration            lower bound                 upper bound               root              f(root)              absolute error\n")
    for i=1:imax
    app_root = (a+b)/2;
    absolute_error = abs(real_root - app_root); 
    fprintf("%d             %10.5f                %10.5f              %10.5f             %10.5f            %10.5f\n",i,a,b,app_root,f(app_root),absolute_error)
    if(absolute_error<=tolerans_value)
        fprintf("Yaklaşık kök=%d",app_root);
        break;
    end
    if(app_root == 0)
        fprintf("Yaklaşık kök=%d",app_root);
        break;
    else
        if(Fa*double(f(app_root))<0)
            b = app_root;
        else
            a = app_root;
        end
    end
    end
end


