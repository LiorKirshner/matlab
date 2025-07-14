%% 

function z = yv(x)
z = x-sqrt(2);
end




t = div2for2(@yv,1,2,10^-10)
format bank;
e = yv(t)
plot(t,e,'rd')
%% 

%% 
