clear; close all; clc;
%In order to compute the linear convolution using DFT, you need to
%post-pad both signals with zeros, otherwise the result would be the 
%"circular convolution".

%Create two vectors, x and y, and compute the linear convolution 
%of the two vectors.
x = [2 1 2 1];
h = [1 2 3];
y1 = conv(x,h);

%In this case, the output has length 4+3-1.
%So, we need to:
%Pad both vectors with zeros to length 4+3-1. 
%Obtain the DFT of both vectors, multiply the DFTs, and obtain the 
%inverse DFT of the product.

xpad = [x zeros(1,6-length(x))];
hpad = [h zeros(1,6-length(h))];
y2 = ifft(fft(xpad).*fft(hpad));

%Plot the output of linear convolution and the inverse of the 
%DFT product to show the equivalence.
figure (1)
subplot(2,1,1)
stem(y1,'filled')
ylim([0 11])
title('Output (conv. in t-domain)')
subplot(2,1,2)
stem(y2,'filled')
ylim([0 11])
title('Output (multiplication in f-domain)')
















