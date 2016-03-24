clc
clear
x = linspace(0,pi,30);
y = 1-x.^2/2+x.^4/(4*3*2);
error = cos(x)-y;
plot(x,error)
hold on
plot(x,cos(x),'r')
hold on
errorbar(x,y,error)
hold off