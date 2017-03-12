close all
clear all

% y = filter(b,a,x)

b1 = [3 2 -3 0 1]; % x
a1 = 1; % y
b2 = 1;
a2 = [1 0.9];

for i = 1:2
    x(i) = 3 - i;
end

y1 = filter(b1, a1, x);
y2 = filter(b2, a2, x);
figure(1);
plot(y1);
title('y1 nonzero');
figure(2);
plot(y2);
title('y2 nonzero');

%%
for i = 1:100
    if i < 3
        x2(i) = 3 - i;
    else
        x2(i) = 0;
    end
end

y3 = filter(b1, a1, x2);
y4 = filter(b2, a2, x2);
figure(3);
plot(y3);
title('y1 zeros');
figure(4);
plot(y4);
title('y2 zeros');
