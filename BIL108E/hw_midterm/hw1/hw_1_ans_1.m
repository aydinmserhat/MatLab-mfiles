clear;
clc;
a=pi/6;
g=9.81;
V=10:5:100;
t=2*V*sin(a)/g
plot(V,t)
grid
xlabel('velocity');
ylabel('2Vsin(a)/g');
title('flight for cannon ball');






