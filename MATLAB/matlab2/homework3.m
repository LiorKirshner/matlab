clear all
clc

figure(1)
ezplot('x^3-1.1*x^2-2.2*x+1.8')
grid on
figure(2)
x = -6:0.1:6;
y = x.^3-1.1*x.^2-2.2*x+1.8;
plot(x,y)
grid on

%התוכנית המיישמת את אלגוריתם שיטת הביסקציה%
f = inline('x^3-1.1*x^2-2.2*x+1.8','x');
a = -1.5; b = -1;
delta = 1e-4;
ya=f(a);
yb=f(b);
if ya*yb > 0 ,error('?error?'),end
while b-a >= delta
c=(a+b)/2;
yc=f(c);
if yc==0
a=c;
b=c;
elseif yb*yc>0
b=c;
yb=yc;
else
a=c;
ya=yc;
end
end
format long
c=(a+b)/2 % שורש
err=abs(b-a) % שורש הגדרת שגיאת
yc=f(c) % yc= f(c)
figure(3)
x = -1.5:0.1:-1;
y = x.^3-1.1*x.^2-2.2*x+1.8;
plot(x,y,c,yc,'d')
grid on

%% 
clc,clear all
x= -3:0.001:3;
y=myf2(x);
figure(1);
plot(x,y);
grid on;
a=0.5;b=1.5;
eps = 10^(-6)

