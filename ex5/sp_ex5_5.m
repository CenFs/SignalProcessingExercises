clear all
close all

f = 10000;
Fs = 80000;
n = 0:63;
func = cos(2 * pi * f * n / Fs);
stem(n, abs(fft(func)));

% func2 = cos(2 * pi * f * 2 * n / Fs);
% FC = fft(func);
% FC2 = fft(func2);
% Z = FC .* FC2;
% c = conv(func, func2, 'same');
% C = fft(c);

