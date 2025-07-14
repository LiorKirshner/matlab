
fun=@(x,y) x.*sin(y) +y.*sin(x);
I = integral2(fun,1,2,0,1)
%I = integral2(fun,xmin,xmax,ymin,ymax)


