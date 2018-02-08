%% Template to give to students for Lab 01

%  Function header that describes function inputs and outputs
%  DO NOT CHANGE

function [distance, peak] = myBallToss(h0, U0, V0, g)
% Assuming ground is flat, final height h = 0
[t1, t2] = myQuadraticFormula(-g/2,V0,h0)

% Use positive value for t
if(sign(t1))
    t = t2;
else
    t = t1;
end

distance = U0*t;

% Find the peak height of the ball
%At peak, V0 = 0
t = V0/g;

peak = -g/2*(t^2)+(V0*t)+h0;

end