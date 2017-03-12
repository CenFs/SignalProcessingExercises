clear all
close all

Fs = 8192;
% x1 = zeros(Fs, 1);
% x2 = zeros(Fs, 1);
% x3 = zeros(Fs, 1);
% x = [x1 x2 x3];
x = zeros(Fs, 3);
% x2 = zeros(3, Fs);
f = [500 700 800];
n = 1 : Fs;

for i = 1 : size(x, 2)
   x(:, i) = cos(2 * pi * n * f(i) / Fs);
   sound(x(:, i), Fs);
   pause(1);
end