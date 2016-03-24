t=linspace(0, 20*pi, 5000);% t is theta
e=2.718;
r=power(e,cos(t))-2*cos(4*t)+sin(5*pi\12);
polar(t, r, '-p')
xlabel('radius')
ylabel('e^cost-2cos4t+sin5pi/12')
title('butterflycurves')
grid










