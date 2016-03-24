clc;
clear;

R = 8.3144; 
T = 460;
P = 1520; 
V_ideal = (R*T/P)*1000; % unite must be cm^3/mol to match up with B,C therefore multiplied by 1000
B = -265; % unite is cm^3/mol
C = 30250; % unite is cm^6/mol^2

i = 1;

V(i) = V_ideal; % initial value from the ideal gas 

for i = 1:5
  V(i+1) = V_ideal*(1 - B/V(i) + C*V(i)^-2);
end

fprintf('molar hacim  = %0.4f cm^3/mol\n' , V(i+1))
  