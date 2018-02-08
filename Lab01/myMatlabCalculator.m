function [E1, E2, E3, E4, E5, E6, E7, E8, E9, E10] = myMatlabCalculator(a,b,c,x)

% E1 has been defined for you
% change the definitions for E2 through E10 to finish the problem

E1 = sqrt((x-a)^2 + b^2);
E2 = (a/factorial(2))*x^2 + (b/factorial(1))*x + (c/factorial(0));
E3 = (a*x+(a*b)/c)^(1/3);
E4 = (x^2+1)/((a*x-1)*abs(c-exp(x)));
E5 = log(2*x - b);
E6 = log10(4*abs(b) + (c/5));
E7 = sqrt((1-cos(a))/(1+cos(a)));
E8 = acos(cos((pi/180)*x));
E9 = exp(pi*sqrt(-1))+1;
E10 = (2*b*c-3)/sin((b-2*a)/sqrt(a^2+b^2+c^2));

end