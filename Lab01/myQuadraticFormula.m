%% Template to give to students for Lab 01

%  Function header that describes function inputs and outputs
%  DO NOT CHANGE
function [x1, x2] = myQuadraticFormula(a,b,c)

%  First solution to the quadratic formula, with +/- as a +
x1 = (-b + sqrt(b^2 -(4*a*c)))/(2*a);

%  Second solution to the quadratic formula, with +/- as a -
x2 = (-b - sqrt(b^2 -(4*a*c)))/(2*a);

end
