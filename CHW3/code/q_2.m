clc;
clear;

t = -6:0.01:6;
% create the range
x_estim = xEstim(t,5);
% estimate x using xEstim function
% with Kmax = 5
mag = abs(x_estim);
% calculate magnitude of x_t using abs function
% for Kmax = 5
phase = angle(x_estim);
% calculate phase of x_t using angle function
% for Kmax = 5
figure(1);
% let us have more than one figure
plot(t, mag);
xlabel('t');
ylabel('|x(t)|');
title('q2.Kmax5');

figure(2);
plot(t, phase);
xlabel('t');
ylabel('φ(x(t))');
title('q2.Kmax5');

x_estim = xEstim(t,15);
% estimate x using xEstim function
% with Kmax = 15
mag = abs(x_estim);
% calculate magnitude of x_t using abs function
% for Kmax = 15
phase = angle(x_estim);
% calculate phase of x_t using angle function
% for Kmax = 15

figure(3);
plot(t, mag);
title('q2.Kmax5');
xlabel('t');
ylabel('|x(t)|');

figure(4);
plot(t, phase);
xlabel('t');
ylabel('φ(x(t))');
title('q2.Kmax15');

x_estim = xEstim(t,30);
% estimate x using xEstim function
% with Kmax = 30
mag = abs(x_estim);
% calculate magnitude of x_t using abs function
% for Kmax = 30
phase = angle(x_estim);
% calculate phase of x_t using angle function
% for Kmax = 30
figure(5);
plot(t, mag);
xlabel('t');
ylabel('|x(t)|');
title('q2.Kmax30');

figure(6);
plot(t, phase);
xlabel('t');
ylabel('φ(x(t))');
title('q2.Kmax30');