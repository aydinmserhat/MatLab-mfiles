clc;
clear;

x = 0:0.05:1

T_bubble = 143.77*x.^4 - 356.52*x.^3 + 317.44*x.^2 - 138.94*x + 99.037
T_dew = 36.74*x.^4 - 65.732*x.^3 + 24.357*x.^2 - 30.966*x + 100.06

plot(x,T_bubble,'--',x,T_dew,':')
grid

set(gca,'XLim',[0 1])
set(gca,'XTick',[0:0.05:1])
set(gca,'YLim',[60 105])
set(gca,'YTick',[60:1:105])

xlabel('x1,y1')
ylabel('Temperature (°C)')
legend('T_bubble','T_dew')
