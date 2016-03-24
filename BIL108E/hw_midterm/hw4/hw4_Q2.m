clear;
clc;
x=[10 15 20 25 30 35 40 45 50];
y=[5 115 245 367 548 700 985 1125 1345];

p_pow=polyfit(log(x),log(y),1); % power function
m=p_pow(1); % m is coefficient
n=exp(p_pow(2)); % n is constant coefficient
x_pow=10:1:50;
y_pow=n*x_pow.^m; % formula of equation

Ai1_12=interp1(x,y,12); % approximate value for 12
Ei1_12=polyval(p_pow,12);%actual value for 12


p_lin=polyfit(x,y,1); % linear function
a=p_lin(1); % a is coefficient of x 
c=p_lin(2); % c is constant coefficient
x_lin=10:1:50;
y_lin=a*x_lin+c;

Ai2_12=interp1(x,y,12); % approximate value for 12
Ei2_12=polyval(p_lin,12); %actual value for 12

% for n=1 
RMS_power=sqrt(mean((Ei1_12 - Ai1_12).^2)) % RMS error for power function
RMS_linear=sqrt(mean((Ei2_12 - Ai2_12).^2)) % RMS error for linear function


hold on

plot(x,y,'*',x_pow,y_pow)
plot(x,y,'o',x_lin,y_lin,'r')

hold off

xlabel('x values')
legend('actual','powerfunction')
title('interpolation')
grid






