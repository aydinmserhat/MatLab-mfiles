clc
clear
tspan = [0 5];
icond = 3;
[T,Y] = ode45('yprime',tspan,icond);
plot(T,Y)
xlabel('Time (seconds)')
ylabel('Displacement (m)')
Title('My plot')