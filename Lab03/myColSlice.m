function [col] = myColSlice(myMatrix, index)
%myColSlice extract a given column from an MxN matrix
col = myMatrix( : , index);
end

