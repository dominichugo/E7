function [best_tier] = getBestTier(usage)
%getBestTier chooses the best tiered pricing scheme for a given electrical 
% usage pattern

%create structure for each tier and sum the multiplied values
t(1).kwh = 1.25*usage;
t(1).val = sum(t(1).kwh);

t(2).kwh = vertcat(0.50*usage(1:8), 2.00*usage(9:16), 0.50*usage(17:end));
t(2).val = sum(t(2).kwh);

t(3).kwh = vertcat(0.25*usage(1:4), 0.75*usage(5:7), 1.50*usage(8:19), ...
    0.75*usage(20:22), 0.25*usage(23:end));
t(3).val = sum(t(3).kwh);
 
%check for best options, including ties and hierarchal preference
if (t(1).val <= t(2).val && t(1).val <= t(3).val)
    best_tier = 1;
elseif(t(2).val < t(1).val && t(2).val <= t(3).val)
    best_tier = 2;
else
    best_tier = 3;
end

