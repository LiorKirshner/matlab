alpha1 = 38;
alpha2 = 42;

h1 = tan(alpha1) * 200;
h2 = 1- (tan(alpha1) / tan(alpha2));
h = h1 /h2

%% 
clc,clear;
a = 12;
b = 8;
cz = 60;
 
c = sqrt (a^2 +b^2 -2*a*b*cosd(cz))

az = acosd( (b^2 + c^2 - a^2) / (2*b*c) )
bz = acosd( (c^2 + a^2 - b^2) / (2*c*a) )


S = a*b*sind(cz) / 2