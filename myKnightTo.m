function [turns] = myKnightTo(board_dim, p1, p2, max_turns)
%myKnightTo move their knight from position p1 to position p2. 

%initiate variables
temp = [];
countInf = 0;

    if isequal(p1(1,:),p2(1,:))
        turns = 0;
    elseif max_turns <=0
        turns = inf;
    else
        A = possiblePos(board_dim,p1(1),p1(2)); %get 8 positions, remove out of bounds
        for i = 1:size(A,1) %check each row
            turns = 1 + myKnightTo(board_dim, A(i,:), p2, max_turns-1);
            %check for turn value
            if turns == Inf
                countInf = countInf+1;
            else
                temp = [temp, turns];
            end
        end
        %assign lowest number of terms
        turns = min(temp);
        %infinity check again
        if isempty(turns)
            turns = Inf;
        end
    end
end

%gets all possible moves of knight
function [A] = possiblePos(dim,x,y)
    temp = [];
    A = [];
        temp = [x-1,y-2+1;x-1,y+2;x+1,y-2;x+1,y+2;...
            x-2,y-1+1;x-2,y+1;x+2,y-1;x+2,y+1;];

    %removes out of bounds coordinates
    for i = 1:size(temp,1)
        A = [A; delRow(dim,temp(i,:))];
    end
end

%delete dat ugly ass row
function [row] = delRow(dim,temp)
    xsize = dim(1);
    ysize = dim(2);
    if ~isempty(temp(temp < 1)) || ~isempty(temp(temp > xsize)) || ...
            ~isempty(temp(temp > ysize))
        row = []; %b y e
    else
        row = temp;
    end
end