clear all
close all
clc

z = sym('z');
% H = 1/(1 - (5/6) * z^-1 + (1/6) * z^-2);

num = [1];
den = [1 -5/6 1/6];
[r, p] = residuez(num, den);
H = r(1)/(1-p(1)*z^-1)+r(2)/(1-p(2)*z^-1)
stem(impz(num, den));
