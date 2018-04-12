function [grad]=myGradient(f,bbox,N)
x = linspace(bbox(1),bbox(2),N);
y = linspace(bbox(4),bbox(3),N);
grad = zeros(length(x),length(y),2);
 
for j = 2:N-1
    for k = 2:N-1
        grad(k,j,1) = (f(x(j+1),y(k)) - f(x(j-1),y(k)))/(x(j+1)-x(j-1));
    end
end
for j = 2:N-1
    for k = 2:N-1
        grad(k,j,2) = (f(x(j),y(k+1)) - f(x(j),y(k-1)))/(y(k+1)-y(k-1));
    end
end
grad = grad(2:end-1,2:end-1,:);
end
