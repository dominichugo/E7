function [sinPeriodic] = mySinPeriodic(X,N)
while any(X > pi) || any(X< -pi)
    X(X > pi) = X(X > pi) - 2*pi;
    X(X < -pi) = X(X < -pi) + 2*pi;
end
sinPeriodic = mySin(X,N);
end