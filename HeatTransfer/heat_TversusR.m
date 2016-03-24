% heat transfer homework-3 question-4 
% plot of temperature versus radius

clc;
clear;

e = 4*10^7;
Ts = 80 * ones(1,41);
k = 15;
r0 = 0.04 * ones(1,41);
r = 0:0.001:0.04;

T = Ts + e * (r0.^2 - r.^2)/6/k
plot(r,T,'r*')
grid
xlabel('radius (m)')
ylabel('temperature at center (cantigrade)')



