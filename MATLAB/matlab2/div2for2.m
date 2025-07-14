
%#שורש 2 שיטת החצייה


function z = div2for2(f,a,b,eps)
L = b-a
while L>eps
    c = (a+b) / 2;
    if f(c)*f(a)< 0 
        b=c;
    else
        a = c;
    end
    L = b-a;
end
z = (a+b) / 2;


end



