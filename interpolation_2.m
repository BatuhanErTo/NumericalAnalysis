x=[0;1;3;5];
y=[1;2;6;7];

result = 0;
a = input("enter a value: ");
for i=1:size(x,1)
    L=1;
    for j=1:size(x,1)
        if(i ~= i)
            L=L*(a-x(j))/(x(i)-x(j));
        end
    end
    L
    resul=result+L*y(i);
end
fprintf("f(%f)=%f\n",a,result)
