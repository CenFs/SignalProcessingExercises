clear all
close all


npointfr = 100;
f = 1;
a = 4;
b = 2;
% [h, w] = freqz(bx, ay, n samples taken from DTFT);

for n = 1:npointfr;
    g(n) = exp(-0.5 * n);
end
N = length(g);
for n = 1:npointfr;
    h(n) = sin(2 * pi * n / (N / 2));
end
y = a * g + b * h;

G = freqz(g);
H = freqz(h);
Y = a * G + b * H;
[Y2, w1] = freqz(y);
subplot(2,2,1);plot(abs(Y));title('linearity');
subplot(2,2,2);plot(abs(Y2));

n0 = 2;
% y2 = g2;
% y2(n+n0) = g2(n+n0);
% for n = 1:npointfr-n0;
%     y2(n) = g(n+n0);
% end
y2 = g(3:end);
Y2 = G;
[Y22, w] = freqz(y2);
subplot(2,2,3);plot(w1, abs(exp(-i * w1 * 2) .* Y2));title('time-shifting');
subplot(2,2,4);plot(w, abs(Y22));


