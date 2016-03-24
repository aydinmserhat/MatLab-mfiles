clc;
clear;

boyler_P = [1,4,8,12.5,15];
m = [97.40,87.832,79.342,78.128,77.834];
Q_abs = [317.856,283.074,251.30,242.257,238.091];
eff = [0.315,0.353,0.398,0.413,0.42];
Q_out = [217.82,177.805,151.30,142.20,138.091];

p_m = polyfit(boyler_P, m, 2);   % polynomial(quadratic) fitting 
p_Q_abs = polyfit(boyler_P, Q_abs, 2);
p_eff = polyfit(boyler_P, eff, 2);
p_Q_out = polyfit(boyler_P, Q_out, 2);

x_quad = 1:0.1:15;   % x axis refers to boyler pressure's data

m_quad = polyval(p_m, x_quad);
Q_abs_quad = polyval(p_Q_abs, x_quad);
eff_quad = polyval(p_eff, x_quad);
Q_out_quad = polyval(p_Q_out, x_quad);

m_10 = polyval(p_m,10);   %can calculated all steps, using any data versus to boyler pressure 
Q_abs_10 = polyval(p_Q_abs,10);
eff_10 = polyval(p_eff,10);
Q_out_10 = polyval(p_Q_out,10);
fprintf('for P = 10 Mpa, mass rate, Qabs, efficiency, Qout(respectively) = %0.3f %0.3f %0.3f %0.3f ', m_10,Q_abs_10,eff_10,Q_out_10)

subplot(2,2,1)
plot(boyler_P,m,'o',x_quad,m_quad,'r')
title('Quadratic Curve Fitting')
xlabel('Boyler-Pressure (Mpa)')
ylabel('Mass Flow Rate (kg/s)')
grid
legend('actual value')

subplot(2,2,2)
plot(boyler_P,Q_abs,'p',x_quad,Q_abs_quad,'b')
title('Quadratic curve Fitting')
xlabel('Boyler-Pressure (Mpa)')
ylabel('Heat Adsorption Rate (MW)')
grid
legend('actual value')

subplot(2,2,3)
plot(boyler_P,eff,'d',x_quad,eff_quad,'g')
title('Quadratic Curve Fitting')
xlabel('Boyler-Pressure (Mpa)')
ylabel('Thermal Efficiency')
grid
legend('actual value')

subplot(2,2,4)
plot(boyler_P,Q_out,'<',x_quad,Q_out_quad,'k')
title('Quadratic Curve Fitting')
xlabel('Boyler-Pressure (Mpa)')
ylabel('Discarded Heat Rate (MW)')
grid
legend('actual value')