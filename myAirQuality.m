function [t_out, C_ode45] = myAirQuality(V, Q, beta,...
    C_vent, t_span, C0, t_start, t_end, E_value)
% tau = V/(Q+beta*V);

f = @(t,C) (Q/V)*C_vent+(emissionRate(t,t_start,t_end,E_value)/V)-(Q*C/V)-(beta*C);

[t_out,C_ode45] = ode45(f,t_span,C0);



end

function E = emissionRate(t,ts,te,Ev)
if t> ts && t <= te
    E = Ev;
else
    E = 0;
end
end