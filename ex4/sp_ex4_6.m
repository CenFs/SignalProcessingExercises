
clear all
close all

load handel

n = -5:5;
fc = 0.2;
h = 2 * fc * sinc(2 * fc * n);
c = conv(y, h);
figure(1);
subplot(2,1,1);stem(h);
subplot(2,1,2);spectrogram(c);
% fre = freqz(h);
% subplot(3,1,3);plot(abs(fre));

%%
n = -100:100;
fc = 0.2;
h = 2 * fc * sinc(2 * fc * n);
c = conv(y, h);
figure(2);
subplot(2,1,1);stem(h);
subplot(2,1,2);spectrogram(c);
% freqz(c);

%%

% 
% lowpass = fir1(50, 0.15);
% lowf = filter(lowpass, 1, y);
% flowf = abs(fft(lowf)).^2;
% flowf = flowf(1:36556);
% subplot(2,1,1);spectrogram(lowf);title('lowpass');
% subplot(2,1,2);plot(flowf);
% 
% %%
% n = -5:5;
% fc = 512;
% f1 = -0.2;
% f2 = 0.2;
% 
% w1 = 2 * pi * f1;
% w2 = 2 * pi * f2;
% 
% x = 0;
% 
% c = conv(x, y);
% b = fir1(48, [0.2 0.6]);
% freqz(b, 1, fc)