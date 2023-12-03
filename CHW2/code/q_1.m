clc;
clear;

n = 0:40;

y = [1, 0.71, -0.46, -0.62];
% create the coefficients of signal y
x = [0.9, -0.45, 0.35, 0.002];
% create the coefficients of signal x

h = impz(x, y, n);
% create the impulse response using signals x, y and the range n

plot(n, h)
% plot the impulse response 
grid on
xlabel('n');
ylabel('h[n]');
title('q1. Impulse response of causal LTI system');