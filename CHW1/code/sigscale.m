function [y,n] = sigscale(x, m, coef)
% function for sclaing signals with a coefficient
n = (m([1:coef:end]))/coef;
y = x([1:coef:end]);
end

