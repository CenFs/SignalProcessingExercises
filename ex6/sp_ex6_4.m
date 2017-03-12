clear all
close all
clc

Fs = 1000;
x = [];
for t = 1:Fs;
    x(t) = 5 * cos(2 * pi * 5 * t / Fs) + 2 * cos(2 * pi * 50 * t / Fs);
end
% plot(x);

r = randn(1, Fs);
y = x + r;
subplot 121;plot(r);title('Gaussian noise');
subplot 122;plot(y);title('noisy signal'); hold on

N1 = 100;
N2 = 40;
h1 = ones(1, N1) / N1;
h2 = ones(1, N2) / N2;

% ans1 = filter(h1, 1, y);
% subplot 122;plot(ans1);title('filter1'); hold on
ans2 = filter(h2, 1, y);
subplot 122;plot(ans2);title('filter2');