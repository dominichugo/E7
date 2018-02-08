function [G, M] = myGreeting(name, major, year)
%myGreeting takes information about a student as input and outputs a
%greeting
myFormat1 = 'Hi, my name is %s and my major is %s. I started at Cal in %d.';
G = sprintf(myFormat1,name,major,year);
temp_array = size(G);
M = temp_array(1,2);

end

