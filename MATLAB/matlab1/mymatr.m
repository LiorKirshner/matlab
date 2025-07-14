function arri = mymatr(arri)

[row ,col] = size(arri);
for i=1:col
    sum = 0; mini=1;
    for j=1:row
        if arri(j,i)>0
            sum =sum +arri(j,i);
        end            
        if arri(j,i) < arri(mini,i)
            mini=j;
        end
    end
    arri(mini,i) = sum;
end




