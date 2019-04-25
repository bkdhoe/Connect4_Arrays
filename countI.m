function num = countI(arr, piece)
% Given an array and a value, return the number of times 
% the value appears in the array.
num = 0;
for i = 1:length(arr)
        if(arr(i) == piece)
            num = num +1;
        end
end
