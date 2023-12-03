[b,a] = ellip(4,0.5,20,0.4);
figure(1)
impz(b,a,50)
% Impulse Response of Elliptic Lowpass Filter

figure(2)
b = fir1(18,30/(100/2),'high',kaiser(19,4));
impz(b,1,[],100)
% Impulse Response of Highpass FIR Filter
