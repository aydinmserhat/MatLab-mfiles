clc
clear

x = 1.5:0.1:4;
y = x.^4 - x.^2 -4;



t = 1.5:0.1:4
z = t.^2 + t -4
hold on
plot(t, z)
plot(x, y)
grid on