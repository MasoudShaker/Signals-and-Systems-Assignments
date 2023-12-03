% Moving-Average Filter 
t = linspace(-pi,pi,100);
rng default  %initialize random number generator
x = sin(t) + 0.25*rand(size(t));

windowSize = 5; 
b = (1/windowSize)*ones(1,windowSize);
a = 1;

y = filter(b,a,x);

figure(1);
plot(t,x)
hold on
plot(t,y)
legend('Input Data','Filtered Data')

% Filter Matrix Rows
rng default  %initialize random number generator
x = rand(2,15);

b = 1;
a = [1 -0.2];

y = filter(b,a,x,[],2);

t = 0:length(x)-1;  %index vector

figure(2)
plot(t,x(1,:))
hold on
plot(t,y(1,:))
legend('Input Data','Filtered Data')
title('First Row')

figure(3)
plot(t,x(2,:))
hold on
plot(t,y(2,:))
legend('Input Data','Filtered Data')
title('Second Row')

% Filter Data in Sections
x = randn(10000,1);

x1 = x(1:5000);
x2 = x(5001:end);
b = [2,3];
a = [1,0.2];
[y1,zf] = filter(b,a,x1);
y2 = filter(b,a,x2,zf);
y = filter(b,a,x);

isequal(y,[y1;y2])