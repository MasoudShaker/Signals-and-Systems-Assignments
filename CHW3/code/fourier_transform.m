function F_T = fourier_transform(func, range, start_p, end_p)
syms w
% define symbolic variable w
syms n
% define symbolic variable n

ft(w) = symsum(func * exp(-1i*w*n), n, start_p, end_p);
F_T = ft(range);
end

