% Write matrix A to text file
%---------------------------------
A=[ 1.322 -20 -3.2 4.45; 8 72.5 20 5.4;    12.455 11.2 -20 9.45];  
f = fopen('matr_1.txt','wt'); % open file for writing
if f==-1 %
  error('Error opening file for writing');
end
fprintf(f,'%4.4f %d %4.4f %4.4f\n',A');
fclose(f);
% Read matrix A from text file
%------------------------------------%
f = fopen('matr_1.txt', 'rt');
if f == -1
  error('Error opening file for reading');
end
disp('Reading a matrix written in a specific format fromtext file');
A=fscanf(f, '%f %d %f %f\n',[4 3])'
fclose(f);