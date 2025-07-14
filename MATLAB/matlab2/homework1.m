clc,clear
filename = 'my.jpg';
A = importdata(filename);
image(A);

%% 

clc
% open file
fild1 = fopen('File1.txt','wt'); % 'wt' means "write text"
fild2 = fopen('File2.txt','wt'); % 'wt' means "write text"
if (fild1 < 0 || fild2 < 0)
 error('could not open file "myfile.txt"');
end;
% write some stuff to file
fprintf(fild1,'17');
fprintf(fild2,'24');
fclose(fild1);
fclose(fild2);

