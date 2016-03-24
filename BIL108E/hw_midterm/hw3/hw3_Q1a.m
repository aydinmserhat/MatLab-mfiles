clear;
clc;
x=0:0.01:4;
f = log(x.^2) - .7;
plot(x,f)
xlabel('x values')
ylabel('ln(x2)')
title('y=ln(x2)')
grid