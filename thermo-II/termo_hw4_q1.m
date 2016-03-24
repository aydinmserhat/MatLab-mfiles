clc;
clear;

X1 = [0.05 0.1 0.2 0.3 0.4 0.6 0.8 0.95];
dH = [-0.342 -0.599 -0.871 -0.917 -0.887 -0.718 -0.455 -0.127];

p = polyfit(X1, dH, 6)
x = 0:0.01:1;
yp = polyval(p,x);

dif = diff(p)
dp = polyval(dif,x)


x1_0 = polyval(p,0);
x1_1 = polyval(p,1);
dH_035 = polyval(p,0.35) 
dH_065 = polyval(p,0.65);

m = (dH_065 - dH_035)/0.3;
%y_035 = d_035*(x - 0.35) + dH_035;
%y_065 = m*(x-0.65) + dH_065;

hold on
plot(X1,dH,'+r',x,yp,'g')
plot(x,dp)
grid


