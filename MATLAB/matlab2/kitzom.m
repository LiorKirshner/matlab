clear;clc;
syms x;
f = x^5 - 3*x^2 + 1;
df = diff(f);
xex = double(solve(df == 0, x, 'Real', true));
yex = double(subs(f, x, xex));
eps = 0.001; % a small value to check around each critical point
sd = sign(double(subs(df, x, xex - eps))) - sign(double(subs(df, x, xex + eps)));
for i=1:length(xex)
    if sd(i) > 0
        s = 'max';
    elseif sd(i) < 0
        s = 'min';
    else
        s = 'is not an extremum';
    end
    disp(['x = ', num2str(xex(i)), ' y = ', num2str(yex(i)), ' - ', s]);
end
fplot(f, [xex(1) - 1, xex(end) + 1]);
hold on; grid on;
plot(xex, yex, '*k');