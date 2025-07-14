function myplot = MyPlot(x, y, t);
F = (y.^2)*(t.^3) +x*t.^3;
plot(t,F, 'r')
end
