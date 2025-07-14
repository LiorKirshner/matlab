function [r,s] = concentration ()
a= 1;
b = 80;
h = 0.1;
n = (b-a)/h;
y0 = 0.75;
y = zeros(1,n);
t = zeros(1,n);
y(1)=y0;
x1 = 0;
flag=1;
for k=2:n;
    y(k) = y(k-1) + h*x1(y(k-1));
	t(k) = t(k-1)+h;
	if (y(k)<=y0/4 && flag==1)
fprintf('It took %d minutes for the concentration to be down pi 4\n', round(k/10));
	flag=0;
	end
end
y1=(33*exp(-t/15))/50 +9/100;
plot(t,y,':rp',t,y1,'--b+')
legend('numerical solution','analytical solution')
errors = zeros(1,n);
for k=1:n
	errors(k)=y(k)-y1(k);
end
figure
plot(errors)
legend('errors')
end

