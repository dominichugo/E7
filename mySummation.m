function [results] = mySummation(array, sumtarget)
%mySummation takes an array of K integers and a single desired value to serve as
% a target summation

%initialize variables
temp = [];
aSize = size(array,2);

%loop to find values that give sum
for i = 1:aSize-2
    for j = i+1:aSize-1
        for k = j+1:aSize
            if sum(array,i,j,k) == sumtarget
                temp = [temp; array(i), array(j), array(k)];
            end
        end
    end
end

%remove duplicates
temp = sort(temp,2);
results = unique(temp,'rows');

end

%sum function
function [s] = sum(a,i,j,k)
    s = a(i) + a(j) + a(k);
end