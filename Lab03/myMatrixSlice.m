function [slice] = myMatrixSlice(myMatrix, orientation, index)
%myMatrixSlice allows user to extract a given row or column from an M × N
% matrix by typing 'r' or 'c', respectively.

%Get matrix size and extract row and column size values
[rsize, csize] = size(myMatrix);

%Slice that matrix uuup
switch orientation
    case 'r'
        if (index > rsize)
            slice = [];
        else
            slice = myRowSlice(myMatrix,index);
        end
    case 'c'
        if (index > csize)
            slice = [];
        else
            slice = myColSlice(myMatrix,index);
        end
end

end
