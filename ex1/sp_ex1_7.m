clear all
close all

hdl = load('handel');
y = hdl.y;
a = y(1 : 10000);
b = zeros(1, 4999);
b(end + 1) = 0.05;
b(1) = 1;

% b = [300 200 100];

c = conv(a, b);
sound(c);

