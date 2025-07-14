clc,clear
syms x
ezplot(sin(x),[-pi pi])
 grid on

 clc,clear
syms x y;
f = (x^3 + 8*x^2 + 17*x+10)/(x+1);
f = simplify(f)