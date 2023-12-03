clc;
clear;

% q4.a

t1 = [-10:0.001:10];
t2 = [-10:10];
xt2 = imag(2 - exp(1-(j*pi).*t2));
% x(t) for stem (without steps)
xt1 = imag(2 - exp(1-(j*pi).*t1));
% x(t) for plot with a 0.001 step

figure
stem(t2, abs(xt2));
title('q4.a');
xlabel('t');
ylabel('abs(xt)');

figure
plot(t1, abs(xt1));
title('q4.a');
xlabel('t');
ylabel('abs(xt)');

figure
stem(t2, angle(xt2));
title('q4.a');
xlabel('t');
ylabel('angle(xt)');

figure
plot(t1, angle(xt1));
title('q4.a');
xlabel('t');
ylabel('angle(xt)');

w = [-10*pi:10*pi];
xw = j*w./(1 + j.*w);

figure
stem(w, abs(xw));
title('q4.b');
xlabel('w');
ylabel('abs(xw)');

figure
plot(w, abs(xw));
title('q4.b');
xlabel('w');
ylabel('abs(xw)');

figure
stem(w, angle(xw));
title('q4.b');
xlabel('w');
ylabel('angle(xw)');

figure
plot(w, angle(xw));
title('q4.b');
xlabel('w');
ylabel('angle(xw)');


