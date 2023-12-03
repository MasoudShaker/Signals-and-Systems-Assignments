function Cn = Cn_periodic(f,T)
syms n 
% define symbolic variable n
syms x
% define symbolic variable x
Cn = int(f * exp(-2i*x*n*(pi/T)), x, -T/2, T/2) / T;
% calculate fourier series coefficients of a periodic signal
% according to forumla
% instead of C0
end

