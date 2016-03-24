clc
clear
x=[0 1 2 3 4 5];
y=[1 -0.6242 -1.4707 3.2406 -0.7366 6.3717];
xl=0:0.1:5;
yl=interp1(x,y,xl);
xs=0:0.1:5;
ys=interp1(x,y,xs,'spline');
xp=0:0.1:5;
yp=interp1(x,y,xp,'pchip');
subplot(1,3,1),plot(x,y,'o',xl,yl,'k')
xlabel('x,xl')
ylabel('y,yl')
legend('actual','linear interpolation')
subplot(1,3,2),plot(x,y,'o',xs,ys,'r')
xlabel('x,xs')
ylabel('y,ys')
legend('actual','spline interpolation')
subplot(1,3,3),plot(x,y,'o',xp,yp,'b')
xlabel('x,xp')
ylabel('y,yp')
legend('actual','pchip interpolation')