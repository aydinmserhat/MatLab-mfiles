clc;
clear;

C = [0.05 0.15 0.25 0.35 0.45];
A = [0.15 0.296 0.525 0.762 0.981];

p = polyfit(C,A,1)
x_ = 0.05:0.01:0.45;

A_linear = polyval(p,x_);

plot(C,A,'*',x_,A_linear)
xlabel('Concentration')
ylabel('Adsorption')
legend('actual value')
title('Linear Calibration For UV Spectroscopy')
grid
