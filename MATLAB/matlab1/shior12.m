clc,clear
syms x;
f=sin(x)/x
a=calc_lim(f, 1)
simplify(a)