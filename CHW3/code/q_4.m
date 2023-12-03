clc;
clear;

t1 = -20:-1;
% create sub range
t2 = 1:20;
% create sub range
t = -20:20;
% create the range

syms x
% define symbolic variable x
T = 10;
% arbitrary period

x_t = rectangularPulse(x/4) * (abs(x)-1);
% create x(t) function according to its formula
Cn = Cn_periodic(x_t,T);
% calculate fourier series coefficients of x(t)
P = [subs(Cn, t1), C0_periodic(x_t, T), subs(Cn, t2)];
phase = angle(P);
% calculate the phases using angle function 
mag = abs(P);
% calculate the magnitudes using abs function 

figure(1);
% let us have more than one figure
plot(t, phase);
xlabel('t');
ylabel('φ(x(t))');
title('q4.phase');

figure(2);
% let us have more than one figure
plot(t, mag);
xlabel('t');
ylabel('|x(t)|');
title('q4.magnitude');

