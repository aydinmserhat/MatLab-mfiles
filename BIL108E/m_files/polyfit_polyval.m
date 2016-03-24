clc
clear
y = [0.9 1.5 2.5 5.1 4.5 4.9 6.3];
x = [0.9 1.5 3 4 6 8 9.5];
coeff = polyfit(x,y,3)
xp = 0.9:0.1:9.5;
yp = polyval(coeff,xp);
plot(x, y, 'o', xp, yp, '*')
grid
xlabel('x, xp')
ylabel('y, yp')
legend('given data','fitted data')