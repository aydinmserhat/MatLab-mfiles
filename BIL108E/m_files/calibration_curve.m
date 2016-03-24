clc
clear
m = [0.503 0.7229 0.7802 1.2106 1.7607 2.4649];
t = [0 1 2 5 10 15];
p = polyfit(t, m, 1);
x = 0:0.1:15;
y = polyval(p, x);
plot(t, m, 'o', x, y)
title('calibration curve')
xlabel('true value')
ylabel('measured value')