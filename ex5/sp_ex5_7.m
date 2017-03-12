clear all
close all

t = [0:.01:10.23];
f = exp(-t) .* sin(10 * t);
noise = rand(1, 1024);
signal = f + noise;
subplot(3, 2, 1);plot(f);title('original');
subplot(3, 2, 2);plot(signal);title('noisy');
So = fft(f);
subplot 323;plot(abs(So));title('ori fft');
Sn = fft(signal);
Sn(1)
subplot(3, 2, 4);plot(abs(Sn));axis([0 1500 0 60]);title('noi fft');
%%
Sn2 = zeros(size(Sn));
a = 50;
b = length(Sn2) - a;
Sn1 = [Sn(1:a), Sn2(a+1:b), Sn(b+1:end)];
Sn1(1) = 10;
% subplot 326;
figure(2)
% plot(abs(Sn1));axis([0 1500 0 600]);title('noi fft2');

sn1 = ifft(Sn1);
% subplot 325;
plot(f); hold on
plot(abs(sn1));title('result');

