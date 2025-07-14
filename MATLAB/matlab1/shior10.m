clc,clear
syms x
f = 1/sqrt(1+2*x.^3); % define the function
a = 0; % define the lower limit of integration
b = 1; % define the upper limit of integration
I = int(f,x, a, b) % calculate the definite integral
Fvpa = vpa(I)
%% 
clc,clear
syms x
f = sin(2*x) / (x^2 +1);
pretty(f)
format short
abs(int(f,0.5,1.5))

%% 
clc
clear all
syms x
f=inline('x.*exp((sin(x)).^x)');
a=0;
b=1;
h=0.02;
N=((b-a)/h);
x=a:h:b;
y=feval(f,x)
Fr=abs(sum(h*y))

%% 
clc
clear all
syms x
f = x*exp((sin(x)^x))
solve(f,x==0.02)


%% 
integral = quad(@(x) 1./sqrt(1 + 2*x.^3), 0, 0.05)
%% 
clc,clear
x = 1.2:0.01:1.6;
y = 1./sqrt(1 + 2*x.^3)
integral = trapz(x,y)
%% 
clear all
clc
x = linspace(0,5);
y1 = x -1;
y2 = sqrt(2*x+1);

[X,Y] = meshgrid(x, [y1, y2]);
fill(X,Y,[0.8 0.8 0.8])
xlabel('x')
ylabel('y')
legend({'y1', 'y2'})
area = trapz(x, max(y1,y2) - min(y1,y2))
%% 
clc, clear all
x = linspace(-5,5);
y1 = x - 1;
y2 = sqrt(2.*x + 1);

[X,Y] = meshgrid(x, [y1, y2]);
fill(X,Y,[0.8 0.8 0.8])
xlabel('x')
ylabel('y')
legend({'y = x - 1', 'y^2 = 2x + 1'})

% Find intersection points
f1 = @(x) x - 1;
f2 = @(x) sqrt(2.*x + 1);
intersection = fzero(@(x) f1(x) - f2(x), [-5 5]);

% Calculate the area between the two curves
area = trapz(x(x <= intersection), y2(x <= intersection) - y1(x <= intersection)) + ...
       trapz(x(x > intersection), y1(x > intersection) - y2(x > intersection))

%% 
clc,clear
syms x
f1= x-1;
f2=  sqrt(2*x+1);
f3=f2-f1
figure
fplot(f1,'b')
hold on
fplot(f2,'r')
grid on
title('Finding Intersections of Functions')
xlabel('Input Values (x)')
ylabel('Ouput Values (f)')
% Find the x-cordinates of intersecting points
Intersections = solve( f3,x)
X_Values= Intersections
Y_Values = subs(f3, x, Intersections) 
plot(X_Values, Y_Values, 'sg', 'MarkerSize',10)
hold off
d=f2-f1;
solve(d)
ans = int(d,x,X_Values, Y_Values)

%% 

clc,clear
syms x
f1= x-1;    
f2= sqrt(2*x+1);
d=f2-f1;
solve(d);
int(d,x,0,4)

%% 
clc,clear
syms x
f = 8*x^3 / (6*x^2 -5*x + 1);
f_simplified = simplify(f)
f_evaluated = subs(f_simplified, x, -3)

%% 

arri = [3 5 -5 4;4 0 2 5 ;43 -54 0 0;4 3 2 -5;-3 0 2 3]
mymatr(arri)
