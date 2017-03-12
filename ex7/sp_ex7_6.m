close all
clear all
clc

num = [0.0798 0.0798 0.0798 0.0798];
den = [1 -1.556 1.272 -0.398];

z = sym('z');
% H = (0.0798 * (1 + z^-1 + z^-2 + z^-3)) / (1 - 1.556*z^-1 + 1.272*z^-2 - 0.398*z^-3);

rnum = roots(num);
rden = roots(den);

figure
zplane(rnum, rden)

%%

[H, w] = freqz(num, den);
figure
freqz(num, den)
figure
plot(w/pi, abs(H))

