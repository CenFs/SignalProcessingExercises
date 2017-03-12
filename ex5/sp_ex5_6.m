clear all
close all


g = [5 -2 2 0 4 3];
h = [3 1 -2 2 -4 4];

G = fft(g);
H = fft(h);
Y = G .* H;
y = ifft(Y);
cc = cconv(g, h, length(g));
% cc2 = cconv(g, h, length(g)+length(h)-1);
% cc3 = conv(g, h);
ans1 = y - cc;

%%
x = [];
y = [];

n = 0:4;
x = cos(pi .* n ./ 2);
y = 3 .^ n;

% c1 = conv(x, y, 'same');
% C = fft(c1);

X = fft(x);
Y = fft(y);
Z = X .* Y;
z = ifft(Z);

cc = cconv(x, y, length(x));
ans2 = z - cc;

% stem(z);
% figure(2);stem(c1);


%%

test1 = [1 1 1 1];
test2 = [1 1 1];

a1 = cconv(test1, test2);
a2 = cconv(test1, test2, 4);
a3 = cconv(test1, test2, 5);
a = conv(test1, test2);