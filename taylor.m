syms x
f=exp(2*x);
real_value = exp(4);

%seri = taylor(f,x,0)
sympref("PolynomialDisplayStyle",'ascend');
seri = taylor(f,x,0,'Order',4);
pretty(seri);
y_deger = double(subs(seri,2));

%truncation_error = real_value - y_deger
for i=1:100
    seri = taylor(f,x,0,'Order',i)
    y_deger = double(subs(seri,2))
    abs_rel_error = abs((real_value-y_deger)/real_value)
    if(abs_rel_error<=0.01)
        fprintf("%d terim ile %f hata - %f yaklaşık değer",i,abs_rel_error,y_deger)
        break;
    end
end
