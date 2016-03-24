clear;
clc;
x=0:0.001:4;
y=x.^3-6*x.^2+11*x-6.1;
plot(x,y,'-r')
xlabel('x values')
ylabel('y=x3-6x2+11x-6.1')
grid