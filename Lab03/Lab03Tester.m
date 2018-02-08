%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Lab 03 Tester-Zipper                          % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear out any variables
clear all; 

% Use a compact output format for easier visual comparison with test cases
format compact; % you can switch back to default by typing "format loose"

%% Test Problem 1

fprintf('\n********** Problem 1 **********\n')
fprintf('   myMatrixSlice')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
M12 = [1 2 3; pi 78 9.3; 0 0 1];
A2 = myMatrixSlice(M12,'r',2)
fprintf('\nThe correct result is:\n')
fprintf('A2 = \n    3.1416   78.0000    9.3000\n')
%fprintf('C =\n  1.2301\n')

%% Test Problem 2

fprintf('\n********** Problem 2 **********\n')
fprintf('   myMultiply')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
M11 = [2 3 4; 0 1 2; 3.2 4 9];
M12 = [5 0 19; 3 7 8; 4 8 9.4];
[A1,E1] = myMultiply(M11,M12,'matrix',[2 2])
fprintf('\nThe correct result is:\n')
fprintf('A1 =\n    23\n')
fprintf('E1 =\n    ''To calculate element array3(2,2) using matrix multiplication, multiply this row [0 1 2] from array1 by this column [0 7 8] from array2 to find array3(2,2) = 23.''\n')


%% Test Problem 3

fprintf('\n********** Problem 3 **********\n')
fprintf('   playTicTacToe')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
b02 = ['xoo';'ox ';'   '];
p2 = [3,3];
m2 = 'x';
[b2,w2] = playTicTacToe(p2,m2,b02)
fprintf('\nThe correct result is:\n')
fprintf('b2 =\n  3x3 char array\n    ''xoo''\n    ''ox ''\n    ''  x''\n')
fprintf('w2 =\n    ''x''\n')


%% Test Problem 4

fprintf('\n********** Problem 4 **********\n')
fprintf('   myBoxPrediction')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
m3 = 1;
f3 = 1.5;
theta3 = 40;
pred3 = myBoxPrediction(m3,f3,theta3)
fprintf('\nThe correct result is:\n')
fprintf('pred3 =\n    ''The box will not slide.''\n')


%% Test Problem 5

fprintf('\n********** Problem 5 **********\n')
fprintf('   getBestTier')
fprintf('\n*******************************\n')

fprintf('\n***** Test case *****\n\n')
fprintf('Your result:\n')
u1 = zeros(24,1);
u1(10:12,1) = 1;
bt1 = getBestTier(u1)
fprintf('\nThe correct result is:\n')
fprintf('bt1 =\n     1\n')


%% Test Problem 6

fprintf('\n********** Problem 6 **********\n')
fprintf('   myGradebook')
fprintf('\n*******************************\n')

jasonGrades = struct('name',{'Jason'},'titles',{{}}, 'scores',[],'totals',[],'perGrade',0, 'letGrade','');
assign1 = struct('title','HW1','score',8,'total',10);
assign2 = struct('title','Exam1','score',44,'total',50);

fprintf('\n***** Test case 1 *****\n\n')
fprintf('Your result:\n')
jasonGrades = myGradebook(jasonGrades,assign1,'add',1)
fprintf('\nThe correct result is:\n')
fprintf('jasonGrades = \n  struct with fields:\n\n')
fprintf('        name: ''Jason''\n      titles: {''HW1''}\n')
fprintf('      scores: 8\n      totals: 10\n')
fprintf('    perGrade: 80\n    letGrade: ''B''\n')

fprintf('\n***** Test case 2 *****\n\n')
fprintf('Your result:\n')
jasonGrades = myGradebook(jasonGrades,assign2,'add',2)
fprintf('\nThe correct result is:\n')
fprintf('jasonGrades = \n  struct with fields:\n\n')
fprintf('        name: ''Jason''\n      titles: {''HW1''  ''Exam1''}\n')
fprintf('      scores: [8 44]\n      totals: [10 50]\n')
fprintf('    perGrade: 86\n    letGrade: ''B''\n')

%% Zip files

% Constants, lab number and functions for this lab
lab = 'Lab03';
files = {'myMatrixSlice.m','myMultiply.m','playTicTacToe.m','myBoxPrediction.m','getBestTier.m', 'myGradebook.m'};

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