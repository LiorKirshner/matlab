t = 0:0.01:1
y=exp(1).^(-2*t).*cos(20*t);
hold on
plot(t,y, 'r')
t2 = 0:0.01:2
y1 = exp(1).^(t2).*cos(20*t2).^2
plot(t2,y1, 'b')
axis([-1 3 0 5])
hold off
%% 
clc,clear;
t = 0:0.03:1;
y1=exp(1).^(-t).*sin(10*t);
y2 = exp(1).^(-t).*cos(10*t);

t2 = 0:0.1:2*pi;
x1 = 10*cos(t2);
x2 = sin(t2);

plot(y2,y1, 'b', x2,x1,'r')

%% 
clc,clear;
t = 0:0.01:1;
y=exp(1).^(-t).*sin(20*t).^3;

plot(t,y, 'b')
%axis([0 0.2 0 1])

%% 
clc,clear;
hold on
t = 0 : 0.2 : 2*pi;
y1 = 0.05.*exp(1).^(t);
plot(t,y1,'r')

y2 = 60*cos(2.*t);
plot(t, y2, 'g')
hold off

%% 
clc,clear;
hold on
t = 0:0.03:1;
x = sqrt(t) .*cos(5*t).^2;
y = (1-t).*sin(t);
plot(x,y, 'g')

%% 
t = 0:pi/500:pi;
xt(1:) = sin(t).*cos(10*t);
yt(1,:) = sin(t).*sin(10*t);
zt = cos(t);
plot3(xt,yt,zt,'-o','MarkerIndices',200)
%% 
a = round(rand(1,10)*10) 







