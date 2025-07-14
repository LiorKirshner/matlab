clc
clear all disp('matrixfor')
A=[4,10;-8,24]
B=[87 2 ; 4 -5]
v=size(A);
k=size(B);
disp(['v= ' ,num2str(v) ', k= ' , num2str(k)]) 
if(v==k)
SUM_AB=[];
for i=1:v(1)
for j=1:v(2)
SUM_AB(i,j) = A(i,j) + B(i,j); 
disp(['i= :' num2str(i)])
disp(['j= :' num2str(j)]) 
disp('-------------------------------')
disp('SUM_AB=A(i,j) + B(i,j)=') 
disp(A(i,j))
disp('+')
disp( B(i,j))
disp('=')
disp( A(i,j) + B(i,j)) 
disp('-------------------------------')
end 
end
disp('SUM_AB= ') 
disp(SUM_AB) 
else
disp('A=!B') 
end

%% 
clc,clear;
x=[1 0.3];

p=[-6 9 -3]
disp("roots")
roots(p)
disp("x1=1 ,x2=0.3")
polyval(p,x)

%% 
clc,clear
a = -2*eye(3,3)

b = 3*ones(3,3)
b = b +eye(3,3)

c=b+ diag([0 1 2])

%% 
clc, clear;
n = 8*rand(1) +2
b=n^2*ones(3,3)
b(1,1) = n
b(2,2) = n
b(3,3) = n

%% 
clc,clear
syms x;
f=x^2 +5*x +4
dif =diff(f,'x',1)
int(f,x)

%% 
clc,clear
syms x
f=x^4 -3*x^3 -28*x^2
f2=diff(f)


%% 
a = randi([0, 9], [3,3])
b = randi([0, 9], [3,3])
a*b
a-b
a*b'
det(a)
%% 
a=[1 2 6 6]
b=[1 -1]


