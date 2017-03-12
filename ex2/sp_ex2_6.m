clear all
close all

Fs = 8192;
h = load('bird1.mat');
x = h.x;
sound(x, Fs);
pause(1);
figure(1);
spectrogram(x);
title('Original');
%%
X = x(1: 2: end);
sound(X, Fs/2);
pause(1);
figure(2);
spectrogram(X);
title('colon:::::');
%%
y = decimate(x, 2);
sound(y, Fs/2);
pause(1);
figure(3);
spectrogram(y);
title('decimate');