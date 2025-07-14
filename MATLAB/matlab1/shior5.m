clc, clear;
h=0 ;
theta=38 ;
syms D;
 
B1 = D*tan(theta*pi/180);
theta2=42 ;
B2 = (D-200)*tan(theta2*pi/180)==B1;
sol = solve(B2, D)



%% 

clc;
a = [0,0]
b = [2,1]
c = [12,22]
[a;b]
AB = pdist([a;b],'euclidean');
disp("ab  = "+ num2str(AB))

%% 

clc,clear;
t = -10:0.1:10
y=sin(t)
y = y.*(y>0);
plot(t,y)
xlabel("xx")
axis([0 10 -0.1 1.1])
%% 
clc,clear
t = -10:0.1:10
y=sin(t)
line(t,y)
axis([0 10 -0.1 1.1])


