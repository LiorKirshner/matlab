% Define the range for x
x = linspace(0, pi/4, 10); % from -1 to 1 with a step size of 0.0001

% Define the range for C
C_values = linspace(-10, 10, 20); % from -10 to 10 with a step size of 0.02

% Plot the function for each value of C
figure;
hold on;
for i = 1:length(C_values)
    C = C_values(i);
    y = C.*sin(2*x)-1
    plot(x, y);
end

% Add labels and title
xlabel('x');
ylabel('y');
title('Plot of y = 6x/6 - C*(x.^3)');
grid on;
hold off;
