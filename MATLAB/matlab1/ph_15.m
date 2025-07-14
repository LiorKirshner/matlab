function[row, Place] = ph_15(A)

row = [[]]; Place=[[]];
t=0;
[numRows,numCols] = size(A);
for i=1 : numRows
    for j=1 : numCols
        if A(i,j) == 0
            t=t+1;
            row(t, 1) = i;
            Place(t,1)= j;
        end
    end
end

end