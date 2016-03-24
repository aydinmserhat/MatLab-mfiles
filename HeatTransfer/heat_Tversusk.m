% heat transfer homework-3 question-4 
%plot of temperature versus thermal conductivity coefficent

clc;
clear;

e = 4*10^7;
Ts = 80;
k = 10:5:400;
r0 = 0.04;

T = Ts + (e * r0^2/6)*(k.^-1);

index = find(k == 15);
T_point = T(index);

plot(k,T,'r',k(index),T_point,'g*')
grid
xlabel('thermal conductivity (k)')
ylabel('temperature at center (cantigrade)')



