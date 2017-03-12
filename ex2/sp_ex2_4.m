clear all
close all

Fs = 8192;
x = zeros(Fs, 8);
f = 1000:1000:8000;
n = 1 : Fs;

for i = 1 : size(x, 2)
   x(:, i) = cos(2 * pi * n * f(i) / Fs);
   sound(x(:, i), Fs);
   pause(1);
end

