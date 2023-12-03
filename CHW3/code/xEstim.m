function y = xEstim(t, Kmax)
    y = zeros(size(t));
    for m = 1:length(t)
        for k=-1*Kmax:Kmax
            y(m) = y(m) + (CK(k) * exp(1i*k*t(m)*pi/3));
        end
    end
end

