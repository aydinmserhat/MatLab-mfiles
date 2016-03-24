% heat transfer ploting of different k (heat coefficent) value
clc;
clear; 

T_air = -15:1:38;
k = [0.75 1 1.25];
h = 14;
L = 0.3;
T_in = 25;
A = 20;

T_out1 = (k(1) * T_in + L * h * T_air) / (L * h + k(1));
T_out2 = (k(2) * T_in + L * h * T_air) / (L * h + k(2));
T_out3 = (k(3) * T_in + L * h * T_air) / (L * h + k(3));

H_1 = (-k(1)*A / L) * (T_out1 - T_in);
H_2 = (-k(2)*A / L) * (T_out2 - T_in);
H_3 = (-k(3)*A / L) * (T_out3 - T_in);

#subplot(2,1,1)
plot(T_air, H_1,'g', T_air,H_2,'b..' ,T_air, H_3,'c*')
#subplot(2,1,2)
#plot(T_air, T_out1,'g', T_air,T_out2,'b..' ,T_air, T_out3,'c*')
xlabel('air temperature range')
ylabel('out of surface temperature')
grid
legend('k = 0.75','k = 1', 'k = 1.25')

