%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           Lab 01 Tester-Zipper                          % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Clear out any variables
clear all; 

% Use a compact output format for easier visual comparison with test cases
format compact; % you can switch back to default by typing "format loose"

%% Test Problem 1

fprintf('\n********** Problem 1 **********\n')
fprintf('   myMatlabCalculator')
fprintf('\n*******************************\n')

fprintf('\n***** Test case 1 *****\n\n')
fprintf('Your result:\n')
[E1, E2, E3, E4, E5, E6, E7, E8, E9, E10] = myMatlabCalculator(3,-6,4,2)
fprintf('\nThe correct result is:\n')
fprintf('E1 =\n  6.082762530298219\n')
fprintf('E2 =\n  -2\n')
fprintf('E3 =\n  1.144714242553332\n')
fprintf('E4 =\n  0.295067408390062\n')
fprintf('E5 =\n  2.302585092994046\n')
fprintf('E6 =\n  1.394451680826216\n')
fprintf('E7 =\n  14.101419947171690\n')
fprintf('E8 =\n  0.034906585039886\n')
fprintf('E9 =\n      0.000000000000000e+00 + 1.224646799147353e-16i\n')
fprintf('E10 =\n  51.030109430285883\n')

%% Test Problem 2

fprintf('\n********** Problem 2 **********\n')
fprintf('   myQuadraticFormula')
fprintf('\n*******************************\n')

fprintf('\n***** Test case 1 *****\n\n')
fprintf('Your result:\n')
[x1, x2] = myQuadraticFormula(1,0,-4)
fprintf('\nThe correct result is:\n')
fprintf('x1 =\n  2\n')
fprintf('x2 =\n  -2\n')

fprintf('\n***** Test case 2 *****\n\n')
fprintf('Your result:\n')
[x1, x2] = myQuadraticFormula(1,0,4)
fprintf('\nThe correct result is:\n')
fprintf('x1 =\n  0.000000000000000 + 2.000000000000000i\n')
fprintf('x2 =\n  0.000000000000000 - 2.000000000000000i\n')

fprintf('\n***** Test case 2 *****\n\n')
fprintf('Your result:\n')
[x1, x2] = myQuadraticFormula(1,2,1)
fprintf('\nThe correct result is:\n')
fprintf('x1 =\n  -1\n')
fprintf('x2 =\n  -1\n')

%% Test Problem 3

fprintf('\n********** Problem 3 **********\n')
fprintf('   myBallToss')
fprintf('\n*******************************\n')

fprintf('\n***** Test case 1 *****\n\n')
fprintf('Your result:\n')
[distance, peak] = myBallToss(1,3,9,12)
fprintf('\nThe correct result is:\n')
fprintf('distance =\n  6.231893566390660\n')
fprintf('peak =\n  3.497451580020387\n')

fprintf('\n***** Test case 2 *****\n\n')
fprintf('Your result:\n')
[distance, peak] = myBallToss(3.5,4,14,12)
fprintf('\nThe correct result is:\n')
fprintf('distance =\n  5.343684681072710\n')
fprintf('peak =\n  3.050968399592253\n')

fprintf('\n***** Test case 2 *****\n\n')
fprintf('Your result:\n')
[distance, peak] = myBallToss(0,0.4,7,9.81)
fprintf('\nThe correct result is:\n')
fprintf('distance =\n  0.132670601058161\n')
fprintf('peak =\n  3.274209989806320\n')


%% Zip files

% Constants, lab number and functions for this lab
lab = 'Lab01';
files = {'myMatlabCalculator.m','myQuadraticFormula.m','myBallToss.m'};

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