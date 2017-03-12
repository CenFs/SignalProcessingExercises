clear all
close all

load handel
load corrupt.mat

Y = fft(y);
Z = fft(z);
H = Z./Y;
h = ifft(H);

plot(h(1:10));