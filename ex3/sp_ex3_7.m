close all
clear all

% [h,t] = impz(b,a)

%%
a1 = [1 0.9]; % y
b1 = 1; % x
subplot(2, 2, 1);
impz(b1, a1);
title('a');

%%
a2 = [1 0.9 0.2];
b2 = 1;
subplot(2, 2, 2);
impz(b2, a2);
title('b');

%%
a3 = [1 -1];
b3 = [0 1];
subplot(2, 2, 3);
impz(b3, a3);
title('c');

%%
a4 = [1 -2];
b4 = [0 -2];
subplot(2, 2, 4);
impz(b4, a4);
title('d');

