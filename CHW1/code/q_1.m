clc;
clear;

% q1.a

n = [0:20];

x = stepseq(0, 0, 20) - stepseq(10, 0, 20);
figure 
stem(n, x);
title('q1.a');
xlabel('n');
ylabel('x(n)');

h = ((0.9).^n) .* stepseq(0, 0, 20);
figure
stem(n, h);
title('q1.a');
xlabel('n');
ylabel('h(n)');

% q1.b

y = conv(x, h);

% q1.c

n = [0:40];

figure
stem(n, y);
title('q1.c');
xlabel('n');
ylabel('y(n)');

