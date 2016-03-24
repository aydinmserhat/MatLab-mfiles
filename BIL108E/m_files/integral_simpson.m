clc
clear
f=[400 -900 675 -200 25 0.2];
a=0;
b=0.8;
n=2;
h=(b-a)/n;
xn=linspace(a,b,n+1);
yn=polyval(f,xn);
Is=(h/3)*(yn(1)+4*yn(2)+yn(3))