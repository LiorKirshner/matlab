a=[5 ,10];b=[9 ,13];
c=[15, 6];d=[6,1];e=[3,2];

ac=norm(a-c)
ab=norm(a-b)
cb=norm(c-b)
dc=norm(d-c)
s1=(ab+ac+cb)/2
A1=sqrt(s1*(s1-ab)*(s1-cb)*(s1-ac))
ad=norm(a-d)
ae=norm(a-e)
ed=norm(e-d)
s2=(ac+ad+dc)/2
s3=(ae+ad+ed)/2
A2=sqrt(s2*(s2-ac)*(s2-ad)*(s2-dc))
A3=sqrt(s3*(s3-ad)*(s3-ae)*(s3-ed))
sum=A1+A2+A3
%% 
syms x
f=exp(1)^(-x^2)

ans=int(f,-10,10);
vpa(ans,5)


%% 
a=[1.6 -3 6;2.41 3.6 -7.36;21 -2.67 -3]
b=[1;0;9.61]
A1=a;A1(:,1)=b;
A2=a;A2(:,2)=b;
A3=a;A3(:,3)=b;
x=[det(A1)/det(a);det(A2)/det(a);det(A3)/det(a)]
%% 
clc,clear
[x,y] = meshgrid(-10:0.5:10);
f = (sin(sqrt((x-1).^2 + (y-3).^2)) ./ sqrt((x-1).^2 + (y-3).^2));
mesh(f)
surfc(x,y,f)



