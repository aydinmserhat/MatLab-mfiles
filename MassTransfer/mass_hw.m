% mass transfer homework-1 question-3

clc;
clear;

M_C = 12;
M_H = 1;
M_O = 16;

C = 16.5;
H = 1.98;
O = 5.48;

v_ethanol = 2*C + 6*H + O
v_metan = C + 4*H

M_ethanol = 2*M_C + 6*M_H + M_O
M_metan = M_C + 4*M_H

%P = 1.0132*10^5
%T = 273
T = [273 293 320 370]
P = [1.0132*10^5 2.0265*10^5 5.066*10^5 10.132*10^5]

for i = 1:4
  for j = 1:4
    D_AB = ((10^-7 * T(i)^1.75) * (1/M_ethanol+1/M_metan)^0.5)/(P(j)*(v_ethanol^(1/3) + v_metan^(1/3))^2) % fuller eqn
end
end

%AB = ((10^-7 * T(1)^1.75) * (1/M_ethanol+1/M_metan)^0.5)/(P(3)*(v_ethanol^(1/3) + v_metan^(1/3))^2)

