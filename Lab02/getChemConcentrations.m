function [A, C] = getChemConcentrations(A0, C0, k, t)
% Find concentration of reactants at given time t
% Reactant A
A = A0*exp(-k*t);

% Reactant B
C = C0+A0-(A0*exp(-k*t));
end

