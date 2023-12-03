clc;
clear;

n = -20:20;
% create the range
fourier_coeff = CK(n);
% calculate the fourier series coefficients using CK function

figure(1);
% let us have more than one figure
fourier_phase = angle(fourier_coeff);
% calculate the phases using angle function 
% with fourier series coefficients in input
plot(n, fourier_phase);
% show us the phases
xlabel('k');
ylabel('φ(F)');
title('q1.phase');

figure(2);
% let us have more than one figure
fourier_mag = abs(fourier_coeff);
% calculate the magnitudes using abs function 
% with fourier series coefficients in input
plot(n, fourier_mag);
% show us the magnitudes
xlabel('k');
ylabel('|F|');
title('q1.magnitude');