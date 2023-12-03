clc;
clear;

% q3.b

n_x1 = [-20:20];
n_x2 = [0:10];
n_conv = [-20:30];

x1 = (ones(1,41)./(2.^(-n_x1+1))) .* (stepseq(-2, -20, 20) - stepseq(2, -20, 20));
x2 = zeros(1,11);
u1 = stepseq(-3, -4, 6);
u2 = stepseq(5, -4, 6);
for n=1:6
    sum = 0;
    for i=-4:n
        sum = sum + (sin(2*i)+exp(j*pi*i)) * (u1(n) - u2(n));
    end
    x2(n) = sum;
end

subplot(2,2,1);
stem(n_x1, x1);
title('Subplot 1: x1 function');

subplot(2,2,2);
stem(n_x2, x2);
title('Subplot 2: x2 function');

subplot(2,2,[3,4]);
stem(n_conv, real(myconv(x1, x2)));
title('Subplot 3 and 4: conv(x1,x2)');

% q3.b

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

