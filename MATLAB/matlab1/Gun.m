%%=========
%
% Gun.m 
% Written by Serge 
% Last update 30-03-2021
% Last ahswer is wrong if y0 ~= 0 !!!
%
%%=========
clc; clear all;
%========= Input ==========
g = 9.8; % acceleration in m/sec^2
x0 = 0;
y0 = 0;
V0 = 50 % initial speed in m/sec
alfa_rad = input('Enter alfa_rad: ');
% Use for example  pi/4
%========= End Of Input
%========= Processing
V0x = V0*cos(alfa_rad);
V0y = V0*sin(alfa_rad);
time1 = V0y/g;
x1 = x0 + V0x * time1
y_max = y0 + V0y*time1 -0.5*g*(time1^2)
t=[0: time1/20: time1];
x = x0 + V0x*t;
y = y0 + V0y*t - 0.5*g*t.^2;
%======== Output 1
disp("Time needed for bullet to reach max height in sec = ");
time1
plot (x, y,'g');
keyboard;
%======== Output 2
disp("Time needed for a bullet to fall back to the ground = 2*time1 ");
disp("This answer is true only if y0 = 0 ");
%======== For example this answer is wrong if y0 = -30
time2 = time1*2
T=[0: time2/20: time2];
x = x0 + V0x*T;
y = y0 + V0y*T - 0.5*g*T.^2;
plot (x, y,'r');