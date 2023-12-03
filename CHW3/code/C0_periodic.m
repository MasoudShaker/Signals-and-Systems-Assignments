function C0 = C0_periodic(f,T)
syms x
% define symbolic variable x
C0 = int(f, x, -T/2, T/2) / T;
% calculate coefficient C0
end

