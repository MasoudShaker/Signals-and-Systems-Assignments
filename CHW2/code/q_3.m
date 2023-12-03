clc;
clear;

n = -20:100;

y = [1, -1, 0.9];
% create the coefficients of signal y
x = [1, 0, 0];
% create the coefficients of signal x

% first part of the question
h = impz(x, y, n);
% create the impulse response using signals x , y and the range n

figure(1);
% let us have more than one figure
plot(n, h)
% plot the impulse response 
grid on
xlabel('n');
ylabel('h[n]');
title('q3(a). Impulse response of causal LTI system');

% second part of the question
s = filter(x, y, n >= 0);
% create the step response using signals x , y and the range n

figure(2);
% let us have more than one figure
plot(n, s)
% plot the step response 
grid on
xlabel('n');
ylabel('s[n]');
title('q3(b). Step response of causal LTI system');

