%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Lab 02 Tester-Zipper                          % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear out any variables
clear all; 

% Use a compact output format for easier visual comparison with test cases
format compact; % you can switch back to default by typing "format loose"

%% Test Problem 1

fprintf('\n********** Problem 1 **********\n')
fprintf('   getChemConcentrations')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
[A, C] = getChemConcentrations(0.962, 1.011, 0.187, 1.382)
fprintf('The correct result is:\n')
fprintf('A =\n  0.7429\n')
fprintf('C =\n  1.2301\n')

%% Test Problem 2

fprintf('\n********** Problem 2 **********\n')
fprintf('   my8BitBinary')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
[decimal] = my8BitBinary([0 0 0 1 0 0 0 1])
fprintf('The correct result is:\n')
fprintf('decimal =\n  17\n')

%% Test Problem 3

fprintf('\n********** Problem 3 **********\n')
fprintf('   addElem')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
[A_out] = addElem([8 6 7 5 3 9], 0, 6)
fprintf('\nThe correct result is:\n')
fprintf('A_out =\n  8   6   7   5   3   0   9\n')

%% Test Problem 4

fprintf('\n********** Problem 4 **********\n')
fprintf('   myRowSlice and myColSlice')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
[row] = myRowSlice(eye(5), 2)
[col] = myColSlice(eye(5), 5)
fprintf('\nThe correct result is:\n')
fprintf('row =\n  0   1   0   0   0\n')
fprintf('col =\n 0  \n 0 \n 0  \n 0  \n 1\n')

%% Test Problem 5

fprintf('\n********** Problem 5 **********\n')
fprintf('   myGreeting')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
[G, M] = myGreeting('Oski', 'Engineering Undeclared', 2020)
fprintf('The correct result is:\n')
fprintf('G =\n ''Hi, my name is Oski and my major is Engineering Undeclared. I started at Cal in 2020.'' \n')
fprintf('M =\n 85 \n')

%% Test Problem 6

fprintf('\n********** Problem 6 **********\n')
fprintf('   combineCells')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
[C_joined, C_nested] = combineCells({'a'; 'AA'}, {'b'; 'BB'})
fprintf('\nThe correct result is:\n')
fprintf('C_joined =\n  2×2 cell array \n {''a''}    {''b''}  \n {''AA''}   {''BB''}  \n')
fprintf('C_nested =\n 1×2 cell array \n {2×1 cell}    {2×1 cell} \n')
fprintf('Note: If you are using Matlab version r2017a or earlier, \n')
fprintf('the curly brackets, { }, will not appear in your answer for C_joined \n')

%% Zip files

% Constants, lab number and functions for this lab
lab = 'Lab02';
files = {'getChemConcentrations.m','my8BitBinary.m','addElem.m','myRowSlice.m','myColSlice.m','myGreeting.m','combineCells.m'};

fprintf('\nAttempting to zip lab files...\n')

% Search for lab files
found = [];
for n = 1:length(files)
    if ~exist(files{n},'file')
        fprintf(['WARNING: file ',files{n},' not found!\n']);
    else
        found = [found, n];
    end
end

% Success/Failure output
if length(found) == length(files)
    fprintf(['Successful creation of zip with all lab functions!\n']);
else
    fprintf('WARNING: One or more files was not found and will be missing from zip!\n') 
    fprintf('You will get 0 credit for any function that is missing from your most recent zip upload!\n');
end

% Zip all files that were found
zip(lab,files(found));