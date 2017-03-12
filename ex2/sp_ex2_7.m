clear all
close all

hdl = load('handel');
y = hdl.y;
Fs = hdl.Fs;

% low pass filter
B = [-0.0039 0 0.0321 0.1167 0.2207 0.2687 0.2207 0.1167 0.0321 0 -0.0039];
c = conv(y, B, 'same');
% sound(c, Fs);

g1 = 10;
g2 = 0.5;
f = y + g1 * c;
sound(f, Fs);




% r = randn(length(y), 1);
% rn = r * 0.1;

% sound(y + rn, Fs);