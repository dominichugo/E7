function [x, err, next_term] = CompareTaylorConvergence(N)
x = -N*pi/2:pi/8:N*pi/2;
X = mySin(x,N);
err = abs(X-sin(x));
next_term = abs(X-mySin(x,N+1));
end