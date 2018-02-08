function [C_joined, C_nested] = combineCells(C1, C2)
%combineCells takes two cell arrays, C1 and C2 as inputs and combines them 

%C_joined concatenates C1 and C2
C_joined = {C1{1:size(C1,1),1}; C2{1:size(C2,1)}}';

%C_nested nests C1 and C2 into the cells of a larger cell array
C_nested = {C1 C2};
end

