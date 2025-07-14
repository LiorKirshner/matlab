til=0:0.01:15;
x = cos(til);
y = sin(til);
comet(x,y)

%% 
y=[5 25 7 10];
v=[0,1,0,0];
pie3(y,v)

%% 
clc
disp('my first eq')
a = input('Enter a: '); 
b = input('Enter b: ');
c = input('Enter c: ');
d=b^2-4*a*c ;
if d<0
    disp (' no real solutions !!!!') 
else
    x1=(-b+sqrt(d))/(2*a);
    x2=(-b-sqrt(d))/(2*a) ;
if(x1==x2)
    disp(['x1=x2 :' num2str(x1)]) 
else
    disp(['x1= :' num2str(x1)])
    disp(['x2= :' num2str(x2)]) 
end
end
%% 
clc
disp('my if for a~=b~=c ')
a, b = input('Enter a : ');
b = input('Enter b : ');
c = input('Enter c : ');
if (a==b && b==c)
    disp('you have egual numbers in your input')
else 
    if( (a<b)&(a<c))
    disp('a min')
    elseif ((b<a)&(b<c)) 
    disp('min b')
    else
    disp('c min')
    end
end

%% 
clc,clear;
disp('my first for command') 
a = input('Enter factorial: ');
my_factoriall=1;
for k = 1:1:a
my_factoriall = my_factoriall * k;
end
disp('The Result of my_factorial is :' )
disp(my_factoriall)

%% 
clc ,clear
M1 = [0 6];
M2 = [111 3];
M3 = [2 4];
M4 = [0 4];

m1d = norm(M4-M1);
m2d = norm(M4-M2);
m3d = norm(M4-M3);

if (m1d < m2d & m1d<m3d)
    disp("M1 CLOSER")
    disp("distance= "+m1d)
elseif (m2d < m1d & m2d<m3d) 
    disp("M2 CLOSER")
    disp("distance= "+m2d)
else
    disp("M3 CLOSER")
    disp("distance= "+m3d)

end

%% שאלה2
clc, clear;

x1 = [2 2];
x2 = [4 2];
x3 = [2 8];
x4 = [4 8];

m12 =  ( x1(2)-x2(2) ) / ( x1(1) - x2(1));
m13 =  ( x1(2)-x3(2) ) / ( x1(1) - x3(1));
m24 =  ( x2(2)-x4(2) ) / ( x2(1) - x4(1));
m34 =  ( x3(2)-x4(2) ) / ( x3(1) - x4(1));

if(x1(2) ~= x2(2) &&  x3(1) ~=x1(1))
    disp("not a square")
elseif(m12==m34 && m13==m24)
    disp("makbilit")
    if (norm(x1-x2)==norm(x1-x3)  )
        disp("olso maoyan")
    end    
end    

%% 
clc,clear
x1=1; x2=3; x3=5; x4=7;
x = input('Enter x: ');

if (x<x1)
    disp("N1")
elseif (x1<=x && x<x2)
    disp("N2")
elseif (x2<=x && x<x3)
    disp("N3")
elseif (x3<=x && x<x4)
    disp("N4")
else
    disp("N5")
end    


%% 
clc,clear;
y=[5 25 7 10];
sum=0;mac=1;isum=0;
for i=y
    if (1<=i && i<=40)
        isum=isum+1;
        sum = sum+i;
        mac = mac*i;
    end   
end    
disp("index sum= "+isum)
disp("sum= "+sum)
disp("mac= "+mac)



%% 
clc,clear;
y=[5 25 7 10];
zogi=1;
eizogi=1;
for i=y
    if rem(i,2)==0
        zogi = zogi*i;
    else 
        eizogi=eizogi*i;
    end    
end        
disp("double zogi= "+zogi)
disp("double ei-zogi= "+eizogi)

%% 
clc,clear
x1=6;x2=5;x3=4;x4=55;
a = [x1 x2 x3 x4]
mini = min(a)
maxi = max(a)

