clc
clear
x=[1940 1950 1960 1970 1980 1990 2000];
y=[537 557 682 826 981 1135 1262];
p=polyfit(x,log(y),1);
m=p(1);
b=exp(p(2));
x_1955=1955;
y_1955=b*exp(m*x_1955)
x_exp=1940:1:2000;
y_exp=b*exp(m*x_exp);
plot(x,y,'o',x_exp,y_exp,'k')