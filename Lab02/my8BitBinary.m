function [decimal] = my8BitBinary(binary)
%my8BitBinary converts a 8-bit binary number in to decimal
decimal = 0;
j = 0;
for i = 8:-1:1
    if(binary(i) == 1)
        decimal = decimal + (2^(j));
    end
    j = j+1;
end

end

