clc;
clear;

% q2.a

n = [-20:20];

x = impseq(0, -20, 20) + impseq(4, -20, 20) - 2.* (stepseq(-3, -20, 20) - stepseq(3, -20, 20));
figure 
stem(n, x);
title('q2.a');
xlabel('n');
ylabel('x(n)');

% q2.b

x_shift_by_1 =  impseq(-1, -20, 20) + impseq(3, -20, 20) - 2.* (stepseq(-4, -20, 20) - stepseq(2, -20, 20));
% shift the signal x by 1
[x_shift_scaled, n_scaled] = sigscale(x_shift_by_1, n, 2);
% scale the shifted signal x by 2 using sigscale function 
[y,n] = sigadd(x, n, -x_shift_scaled, n_scaled);
% add signals x and -x(2n+1) using sigadd function
figure 
stem(n, y);
title('q2.b');
xlabel('n');
ylabel('y(n)');

% q2.c

e_jpn = cos(n*pi) + j*sin(n*pi);
z = e_jpn .* cos((pi*n)/2) .* x;
figure 
stem(n, real(z));
title('q2.c');
xlabel('n');
ylabel('z(n)');


