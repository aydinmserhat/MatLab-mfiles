clc
clear
%-1 is changed to 1
x=-34:1:15;
y=x.^5-3*x.^4-11*x.^3+27*x.^2+10*x-24;
dy=diff(y)./diff(x);
dy1=[0 (dy)]
plot(x,y,'o',x,dy1)