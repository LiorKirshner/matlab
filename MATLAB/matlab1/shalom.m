disp("lior")
%num1 = input("enter the first number");
%num2 = input("enter the second number");
%num3 = input("enter the third number");
echo on
%x = num1*num2*num3;
%disp("Num1 * Num2 * Num3 =  "+ num2str(x))
echo off

num = [3 5]; den = [1 5 6];
[K, R] = residue(num,den)
disp(poly2sym(num)) %Display the polinom as polinum and not vector/hand-written string
disp("------------")
disp(poly2sym(den))
den1=poly2sym([1 -R(1)]);
den2=poly2sym([1 -R(2)]);
disp("הפירוק הוא")
disp(K(1)/den1+K(2)/den2) 


disp("-------------")
Row_Vec = 1:1:10;
Row_Vec = Row_Vec'; %Trnasport the vector 
disp(Row_Vec)


disp("-------------")
disp("Log10(2) ---> log10(100) :")
for i = 2 : 10
if mod(i,2) == 0 
disp("log10("+i+") = ")
log10(i)
end
end



disp("-------------")
disp("Amount of prime between 900 to 9000")
Prime_Vector = primes(2);
for k = 900: 9000
    Prime_Vector = primes(k); %primes is a row vector of the prime numbers  
                              %equal less than or to N                  
end
disp(length(Prime_Vector))

disp("-------------")
disp("Vector of even numbers")
x = 20:-2:-20;
for c = 1 : length(x)
    if x(c) < 0 
         x(c) = pi;
    elseif x(c) > 0 && x(c) ~= 4
          x(c) = 50;
    end
end
disp(x)


vecc = 0: 0.01 : 1;
for i=1 : length(vecc)
    x2 = (i.^i);
end   
disp(x2)

disp("-----------")
disp("func from -pi to pi")
x = -pi : pi;
z=x.^x;

disp(z)
