clc;
clear;

syms n 
% define symbolic variable x

x1(n)=piecewise(n<0, 0, (4>=n)&(n>=0), 1, n>4, 0);
% create x1(n) function according to its formula
x2(n)=piecewise(n~=0, sin(n)*sin(2*n)/(n*pi)^2, 2/pi^2);
% create x2(n) function according to its formula
x3(n)=sin(100*n) * exp(-1i*pi*n);
% create x3(n) function according to its formula

n_range=-50:50;

FT1 = fourier_transform(x1(n), n_range, 0, 4);
% compute the fourier transform of x1(n) using the function written
FT2 = fourier_transform(x2(n), n_range, -50, 50);
% compute the fourier transform of x2(n) using the function written
FT3 = fourier_transform(x3(n), n_range, -50, 50);
% compute the fourier transform of x3(n) using the function written

n_range_2 = [-20:20];

figure(1) 
% let us have more than one figure
subplot(2, 1, 1)
stem(n_range, abs(FT1));
title('a.magnitude');

subplot(2, 1, 2)
stem(n_range, angle(FT1));
title('a.phase');

figure(2)
% let us have more than one figure
subplot(2, 1, 1)
stem(n_range, abs(FT2));
title('b.magnitude');

subplot(2, 1, 2)
stem(n_range, angle(FT2));
title('b.phase');

figure(3)
% let us have more than one figure
subplot(2, 1, 1)
stem(n_range, abs(FT3));
title('c.magnitude');

subplot(2, 1, 2)
stem(n_range, angle(FT3));
title('c.phase');
