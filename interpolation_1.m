x=[20;40;60]
y=[15.46;7.11;0.95]

plot(x,y,"*")
title('Baz istasyonu verileri')
xlabel('mesafe,m')
ylabel('güç yoğunluğu,k')
xlim([0 80])
ylim([0 16])

n=size(x,1)-1
for i=1:n
    cf=polyfit(x(i:i+1),y(i:i+1),1);
    fprintf('%d.denklem = %f x + %f \n',i,cf(1),cf(2))
end
