close all
clear all

for i = 1:3;
    h1(i) = 1;
    x(i) = i;
end

for i = 1:11;
    h2(i) = 0.9^(i-1);
end

y1 = conv(x, h1);
figure(1);
plot(y1);
title('a');
y2 = conv(y1, h2);
figure(2);
plot(y2);
title('b');
%% system 1
s1_input_x = length(x);
s1_input_h1 = length(h1);
s1_output_y1 = length(y1);
%% system 2
s2_input_y1 = length(y1);
s2_input_h2 = length(h2);
s2_output_y2 = length(y2);
%% interchanged
dy1 = conv(x, h2);
dy2 = conv(dy1, h1);
figure(3);
plot(dy1);
title('d1');
figure(4);
plot(dy2);
title('d2');