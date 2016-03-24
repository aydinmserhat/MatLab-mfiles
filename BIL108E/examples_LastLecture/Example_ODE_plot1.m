clc
clear
tspan = [1 3];
icond = 4.2;
[T,Y] = ode45('ODEexample1',tspan,icond);
plot(T,Y)
xlabel('Time (seconds)')
ylabel('Displacement (m)')
Title('My plot')