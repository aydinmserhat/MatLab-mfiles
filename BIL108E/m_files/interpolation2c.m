clc
clear
x=[1940 1950 1960 1970 1980 1990 2000];
y=[537 557 682 826 981 1135 1262];
xl=1940:0.1:2000;
yl=interp1(x,y,xl);
yl_1955=interp1(x,y,1955)
xs=1940:0.1:2000;
ys=interp1(x,y,xs,'spline');
ys_1955=interp1(x,y,1955,'spline')
subplot(1,2,1),plot(x,y,'o',xl,yl,'k')
xlabel('x,xl')
ylabel('y,yl')
legend('actual','linear interpolation')
subplot(1,2,2),plot(x,y,'o',xs,ys,'r')
xlabel('x,xs')
ylabel('y,ys')
legend('actual','spline interpolation')