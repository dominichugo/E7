function [A_out] = addElem(A, elem, i)
%   addElem inserts an element into an existing input array of size N. 
    A_out = [A(1:i-1) elem A(i:end)];
end

