function [prediction] = myBoxPrediction(m, f, theta)
%myBoxPrediction solves the force balance for this critical value of the 
%slope or the friction coeffcient.

%Initiate variables
g = 9.81;

switch '?'
    case f
        Fx = sind(theta)*m*g;
        N = cosd(theta)*m*g;
        f = Fx/N;
        prediction = sprintf('If f is less than %5.2f, the box will slide.',f);
    case theta
        theta = atand(f);
        prediction = sprintf('If theta is greater than %5.2f degrees, the box will slide.',theta);
    otherwise
        Fx = sind(theta)*m*g;
        N = cosd(theta)*m*g;
        Ff = f*N;
        
        if (Ff >= Fx)
            prediction = 'The box will not slide.';
        else
            prediction = 'The box will  slide.';
        end
end

end

