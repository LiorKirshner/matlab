function  [ Sn, Sn2 ] = fCos( x )
x= x*pi / 100 ;%מעבר לרדיאנים
n=0;
an=1;
Sn = an;
Sn2 = an;
E=inf;
while E > 0.000001
    n=n+1;
    an=x.^(2*n) / factorial(2*n); %נוסחאה
    bn = x.^(2*n+1) / factorial(2*n+1);
    b=mod(n,2);%(-1)^n
    if (b==1)
        Sn = Sn-an;
        Sn2 = Sn2-bn;

    else
        Sn = Sn+an;
        Sn2 = Sn2+bn;
    end
    E = abs(an/Sn);
end

end



