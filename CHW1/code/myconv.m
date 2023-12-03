function y = myconv(func1, func2)
% function for computing convultion of two signals (x,h)
n_x=length(func1);
n_h=length(func2);
x=[func1,zeros(1,n_h)]; 
h=[func2,zeros(1,n_x)]; 
for i=1:n_h+n_x-1
y(i)=0;
for j=1:n_x
if(i-j+1>0)
y(i) = y(i) + x(j)*h(i-j+1);
else
end
end
end
end

