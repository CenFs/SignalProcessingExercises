close all
clear all

v = [-1, 2, 3, 1];
ftv = fft(v, 100);
figure(1);
plot(abs(ftv));
title('absolute values');
figure(2);
plot(angle(ftv));
title('arguments');