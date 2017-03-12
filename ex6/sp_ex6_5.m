close all
clear all
clc

L = 8; % # of elements in the block
B = 2; % # of blocks

g = [5, -2, 2, 0, 4, 3, 4, 0, 2, -1, 3];
N = length(g);
h = [0.1, 0.2, 0.4, 0.2, 0.1];
M = length(h);
overlap = zeros(1, M-1);
h1 = [h zeros(1, L-1)];
L2 = (B-1)*(L-length(overlap))+L;
g1 = [g zeros(1,L2-N)];

poss = 1;
for k = 1:B
    pose = poss+L-1;
    x(k,:) = g1(poss:pose);
    poss = pose + 1;
%     poss = pose-length(overlap)+1;
%     c(k,:) = cconv([overlap x(k,:)],h1,length(h1));
%     overlap = x(k,end-M+2:end)
end

% res = [c(1,M:end), c(2,M:end), c(3,M:end-1)];
% subplot 211;plot(res);

%%
% H1 = fft(h1);
% G = fft(g);
% ans1 = ifft(G.*H1);
subplot 212;
ans2 = conv(g, h1);plot(ans2);
