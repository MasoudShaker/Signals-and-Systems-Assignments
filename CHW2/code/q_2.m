clc;
clear;

n = 0:150;

y = [1];
% create the coefficients of signal y
x = [1, -1];
% create the coefficients of signal x

% first part of the question
rect_pulse = 5 .* (stepseq(0, 0, 150) - stepseq(20, 0, 150));
% create the rectangle pulse signal 
x1_sig = filter(x, y, rect_pulse);
% filter the rectangle pulse signal 

figure(1);
% let us have more than one figure
plot(n, x1_sig);
grid on
xlabel('n');
ylabel('x[n]');
title('q2(a). rectangle pulse differentiator');

% second part of the question
sin_pulse = sin((n*pi)/25) .* (stepseq(0, 0, 150) - stepseq(100, 0, 150));
% create the sine pulse signal 
x2_sig = filter(x, y, sin_pulse);
% filter the sine pulse signal 

figure(2);
% let us have more than one figure
plot(n, x2_sig);
grid on
xlabel('n');
ylabel('x[n]');
title('q2(b). sine pulse differentiator');
