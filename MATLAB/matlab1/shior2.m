disp("Bar")
echo off
num1 = input("Enter first Num: ");
num2 = input("Enter second Num: ");
num3 = input("Enter third Num: ");
Times = num1 * num2 * num3;
num2str(Times);
disp("Num1 * Num2 * Num3 =  "+ num2str(Times))
Mone = [3 10];
Mech = [1 5 6];
disp(poly2sym(Mone)) %Display the polinom as polinum and not vector/hand-written string
disp("------------")
disp(poly2sym(Mech))
disp("הפירוק לשברים יסודיים הוא: " +residue(Mone, Mech))

disp("-------------")
Row_Vec = 0:1:10;
Row_Vec = Row_Vec'; %Trnasport the vector 
disp(Row_Vec)

disp("-------------")
disp("Log10(2) ---> log10(100) :")
for i = 2 : 100
    disp("log10("+i+") = ")
    log10(i)
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
Vec1 = 20:-1:-20;
Vec2 = 20:-1:-20;
for c = 1 : length(Vec1)
    if Vec1(c) < 0 
         Vec2(c) = pi;
    elseif Vec1(c) > 0 && Vec1(c) ~= 4
          Vec2(c) = 50;
    end
end
disp(Vec2)

disp("-----------")
disp("Vector of noobs")
Vec3 = 0:0.1:1;
times = 0;
for C = 1:length(Vec3)
    times = c .^c;
end
disp(times)

disp("-----------")
disp("func from -pi to pi")
for x = -pi : pi
z = (exp(x) + sin(x)) / (x + cos(x));
end
disp(z)