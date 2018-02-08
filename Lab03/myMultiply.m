function [array3,explanation] = myMultiply(array1,array2, multType, indices)
%myMultiply computes the value of a single element of the product of two 
% 3x3 arrays by either element-by-element muliplication or matrix multiplication

%extract indexed row and column from array1 and array2
row = myMatrixSlice(array1,'r', indices(1))
col = myMatrixSlice(array2,'c', indices(2))

% Error Checking
if (any(size(array1) ~=3) && any(size(array2)~= 3))
    array3 = [];
    explanation = 'Error: array1 and array2 must be 3x3.';
elseif (~strcmp(multType,'matrix') && ~strcmp(multType, 'elem-by-elem'))
    array3 = [];
    explanation = 'Error: invalid multType.';
elseif (any(indices(:) > 3))
    array3 = [];
    explanation = 'Error: index is out of bounds.';    

%Pass Error Checks
else
    switch multType
        case 'matrix'
            array3 = row * col;
            explanation = sprintf(['To calculate element array3(%d,%d) using matrix multiplication, multiply this row ' mat2str(row) ' from array1 by this column ' mat2str(col') ' from array2 to find array3(%d,%d) = %d.'],indices(1),indices(2),indices(1),indices(2),array3);
        case 'elem-by-elem'
            temp_array3 = row.*col
            array3 = temp_array3(indices(1), indices(2));
            explanation = sprintf('To calculate element array3(%d,%d) using element-by-element multiplication, multiply array1(%d,%d) by array2(%d,%d) to find array3(%d,%d) = %d.',indices(1),indices(2),indices(1),indices(2),indices(1),indices(2),indices(1),indices(2),array3);
    end
end

end

