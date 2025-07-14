clc,clear
A=[4 0 -2; 6 8 0; 0 0 0 ]

 [row, Place] = ph_15(A);
disp(table(row, Place));

%% 
clc;clear

a = [3 6 3 6 9 4 2 1 0]
b=a;
 
for i=1 : length(a)-1
    b(i+1) = a(i);
end  
disp(b)

%% 
clc,clear
%id = input("Enter id: ");
id=314983081
index = input("Enter i : ");
i=idindex(id,index)
hw=(10*i + 10)
n5=idindex(id,5);
n9=idindex(id,9);
midtest=5*(n5+n9)
n2=idindex(id,2);
n3=idindex(id,3);
n4=idindex(id,4);
fintest=(1.67*(n2+n3) + 3.5*(n4+n5+2))
final = (hw+midtest+fintest)/3
%% 
clc,clear
grid on;
a=[-15,0];
b=[15,0];
aa=[0,0];
bb=[-2,-3];
bbb=[5,-3];
bbbb=[-4,3];
k=[0,-15];
m=[0,15];
quiver(a(1),a(2),b(1)-a(1),b(2)-a(2),1,'r','LineWidth',1)
hold on
quiver(aa(1),aa(2),bb(1)-aa(1),bb(2)-aa(2),1,'r','LineWidth',1)
hold on
quiver(aa(1),aa(2),bbb(1)-aa(1),bbb(2)-aa(2),1,'b','LineWidth',1)
hold on
quiver(k(1),k(2),m(1)-k(1),m(2)-k(2),1,'y','LineWidth',1)
hold on
legend(-2, -3, 'B')
quiver(aa(1),aa(2),bbbb(1)-aa(1),bbbb(2)-aa(2),1,'b','LineWidth',1)
text(13.5,1.2,'X')


