function [gbook] = myGradebook(gbook0, assign, command, position)
%myGradebook updates an existing gradebook for a single student to include a newly
% graded assignment.

    switch command
    case 'add'
        gbook0.titles = [gbook0.titles, assign.title];
        gbook0.scores = [gbook0.scores, assign.score];
        gbook0.totals = [gbook0.totals, assign.total];
        [gbook0.perGrade,gbook0.letGrade] = calcGrade(gbook0.scores,...
            gbook0.totals);
    case 'replace'
        gbook0.titles(position) = cellstr(assign.title);
        gbook0.scores(position) = assign.score;
        gbook0.totals(position) = assign.total;
        [gbook0.perGrade,gbook0.letGrade] = calcGrade(gbook0.scores,...
            gbook0.totals);
    case 'remove'
        gbook0.titles = [gbook0.titles(1:position-1),...
            gbook0.titles(position+1:end)];
        gbook0.scores = [gbook0.scores(1:position-1),...
            gbook0.scores(position+1:end)];
        gbook0.totals = [gbook0.totals(1:position-1),...
            gbook0.totals(position+1:end)];
        [gbook0.perGrade,gbook0.letGrade] = calcGrade(gbook0.scores,...
            gbook0.totals);
        
    end
gbook = gbook0;

end

%calculate grade
function [a,b] = calcGrade(score,total)
        a = floor((sum(score)/sum(total))*100);
        b = grading(a);
end

%Letter Grade equivalent
function [g] = grading(ave)
if ave >= 90
    g = 'A';
elseif ave >=80 && ave < 90
    g = 'B';
elseif ave >=70 && ave < 80
    g = 'C';
elseif ave >=60 && ave < 70
    g = 'D';
elseif ave <60
    g = 'F';
end
end