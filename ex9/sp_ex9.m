clear all
close all
clc

Fs = 8000;
Fstop1 = 1000;
Fpass1 = 1400;
Fpass2 = 2000;
Fstop2 = 2400;
dp = 0.05;
ds = 0.01;
A = [0 1 0];
F = [Fstop1 Fpass1 Fpass2 Fstop2];
DEV = [ds dp ds];

[N, Fo, Ao, W] = firpmord(F, A, DEV, Fs);
[B, ERR, RES] = firpm(N, Fo, Ao, W);

plot_fir(N, B, Fs);
fextr = RES.fextr;
figure;
MAG_fir(B, fextr, Fo, Ao, Fs);

%%
N1 = N + 4;

[B1, ERR1, RES1] = firpm(N1, Fo, Ao, W);
figure;
plot_fir(N1, B1, Fs);

fextr1 = RES1.fextr;
m = length(fextr1);
R = 2 * m - 3;
L = (R - 1) / 2;
figure;
MAG_fir(B1, fextr1, Fo, Ao, Fs);

%%
close all
clc

n = 1 : Fs;
x1 = cos(2 * pi * n * 1600 / Fs);
x2 = cos(2 * pi * n * 1000 / Fs);
x3 = cos(2 * pi * n * 2600 / Fs);
x = x1 + x2 + x3;

[X, w] = freqz(x, 1, Fs/2);
figure;
subplot 211;
plot(abs(X));title('original');

y = filter(B, 1, x);
[Y, w] = freqz(y, 1, Fs/2);
subplot 212;
plot(abs(Y));title('filtered');
