clc;
%A-----------
syms y(t) alpha
y0 = 1; % initial number of creatures
alpha_val = 0.5 % reproduction rate
ode = diff(y) == alpha*y;
sol = dsolve(ode, y(0) == y0);
sol = subs(sol, alpha, alpha_val);
disp(sol)

%B-----------
y0 = 1; % initial number of creatures
alpha = 0.5; % reproduction rate
t = 0:0.1:10; % time range
%------------
y = y0 .* exp(alpha * t);
%------------
figure
plot(t, y)
title('Change in Population Over Time')
xlabel('Time')
ylabel('Number of Creatures')