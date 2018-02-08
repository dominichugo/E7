%% Lab 3 Code-Together

% Clear all variables
clearvars all;

% Set this to 1,2,3 in order to progress through each part
part = 3;

%% Variable denfinitions
a = 1;
b = 2;
c = 5; % "... and the number of the counting shall be 3"

A = [1, 1, 2, 3, 5, 8];
B = [1, 2, 3, 5, 7, 11];
C = [1, 2, 3; 1, 4, 9];

%% Part 1
if part == 1
    a = CompareArrayStart(A,B)
    b = CompareArrayStart(A,C)
    c = CompareArrayStart(B,C)
end

%% Part 2
if part == 2
    [b,a,d] = Confusing(A,B,c,b,a,C)
end

%% Part 3
if part == 3
    [a,b,c,d] = SometimesSplitTwice(A,C)
end

%% Local Functions

% Compare the first half of array A1 and A2
% Return boolean if there is an exact match
function [c] = CompareArrayStart(A1, A2)
    A1_start = SplitArray(A1);
    A2_start = SplitArray(A2);
    c = all(A1_start == A2_start);
end

% Split A into two halves, A1 and A2
function [A1, A2] = SplitArray(A)
    A1 = A(1:numel(A)/2);
    A2 = A(numel(A)/2+1:end);
end

% A confusing function
function [c,d,b] = Confusing(A,B,c,b,a,C)
    d = [b, a];
    [b,a] = SplitArray(A);
    A = CompareArrayStart([1,c,a,c],C);
    B = c + A;
    c = CompareArrayStart([B,c],b(b==1));
    d = [B, A, d];
    b = b.^C;
end

% This code throws an error and causes a bunch of warnings, why?
function [a,b,c,d] = SometimesSplitTwice(M,C)
    [A, B] = SplitArray(M);
    [C1, C2] = SplitArray(C);
    
    if any(A == C1)
        [a,b] = SplitArray(A);
    end
    
    if any(B == C2)
        [c,d] = SplitArray(B);
    end
end
