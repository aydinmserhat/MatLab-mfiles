clc
clear
W = 15;
gamma = 0.101;
Valum = W/gamma
a = [-2 24];
b = [-2 12];
c = [-1 4];
Vin = conv(c, conv(a,  b));
polyeq = [0 0 0 (Valum - 24*12*4)] + Vin
x = roots(polyeq)