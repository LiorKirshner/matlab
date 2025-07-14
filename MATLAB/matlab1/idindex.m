function i =idindex(id,index)
if index>10
    i=-1
    return
end    
id2=num2str(id);
i = str2num(id2(index));
end