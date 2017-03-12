clear all
close all

r = randn(10000, 1);
k1 = 0.9;
k2 = 0.5;
k3 = 0.05;

rnoise = r * k1;

hdl = load('handel');
y = hdl.y;
Y = y(1: 10000);

sound(Y + rnoise);
