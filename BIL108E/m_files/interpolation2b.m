clc
clear
x=[1940 1950 1960 1970 1980 1990 2000];
y=[537 557 682 826 981 1135 1262];
p=polyfit(x,y,2);
y_1955=polyval(p,1955)
x_quad=1940:0.1:2000;
y_quad=polyval(p,x_quad);
plot(x,y,'o',x_quad,y_quad,'r')