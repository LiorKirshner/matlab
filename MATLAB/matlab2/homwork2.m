% כתיבת תוצאות ניסוי לקובץ טקסט 
% -------------------------------------------------% 
 
f=fopen('f.txt','wt');
if f == -1
error('שגיאה בפתיחת קובץ לכתיבה')
end
fprintf(f,'%-8s\n','Experiment results 2 March 2019y.:'); fprintf(f,'\n');
fprintf(f,'%s %5s\n', 't','S');
fprintf(f,'\n');
for t=0:5:45
S = 0.92*t+66.7; fprintf(f,'%d %5.2f\n',t,S);
end
fprintf(f,'\n');
fprintf(f,'%-8s\n','Experiment results 3 March 2019y.:'); fprintf(f,'\n');
fprintf(f,'%s %5s\n', 't','S');
fprintf(f,'\n');
for t=50:5:95
S = 0.92*t+66.7; fprintf(f,'%d %5.2f\n',t,S);
end
fclose(f);

% קריאת תוצאות ניסוי מקובץ טקסט 
% % ------------------------------------------------- 
f = fopen('f.txt', 'rt'); 
if f == -1
eror('שגיאה בפתיחת קובץ לכתיבה')
end
fscanf(f,'%c',[1 inf]) 
fclose(f);

