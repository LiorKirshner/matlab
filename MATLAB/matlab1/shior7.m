clc;clear;

[x,y] = meshgrid(-5:0.2:5);
c=1; a=20;
b=20;
A=a^2; B=b^2;
z=c*sqrt((x.^2)/A+(y.^2)/B+1);
plot3(x,y,z,'p')
grid on

%% 
clc;clear;

[x,y] = meshgrid(-5:0.2:5);
c=1; a=20;
b=20;
A=a^2; B=b^2;
z=c*sqrt((x.^2)/A+(y.^2)/B+1);
subplot(2,2,1)
plot3(x,y,z,'p')
grid on
title('plot3')
subplot(2,2,2)
mesh(z)
title('mesh')
subplot(2,2,3)
surfc(z)
title('surfc')


%% 
clc;clear;
syms x;
f(x) = piecewise(-2*pi<=x<=-pi, pi*sin(x), -pi<=x<=pi, pi-abs(x), pi<=x<=2*pi, pi*sin(x)^3)
fplot(f, [-3*pi , 3*pi])

%% 
clc,clear;
syms x;
f(x) = piecewise(x<-1, -1, -1<=x<=1, x, x>1, 1)
fplot(f(x), [-1.5, 1.5])

%%
[x,y] = meshgrid(-5:0.2:5);
a=20;b=20;c=1;
A=a^2;B=b^2;
z=0.5*((x.^2)/A-(y.^2)/B+1);
contour3(x,y,z,100)
