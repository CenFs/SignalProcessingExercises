clear all
close all

h = load('toomuch.mat');
fs = h.fs;
x = h.toomuch;

sound(x, fs);
pause(1);
figure(1);
spectrogram(x);

B = [-0.0039 0 0.0321 0.1167 0.2207 0.2687 0.2207 0.1167 0.0321 0 -0.0039];
c = conv(x, B);
sound(c, fs);
figure(2);
spectrogram(c);

