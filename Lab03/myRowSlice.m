function [row] = myRowSlice(myMatrix, index)
%myRowSlice extract a given row from an MxN matrix
row = myMatrix(index, : );

end

