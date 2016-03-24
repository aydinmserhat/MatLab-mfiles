%composite tropeziodal rule of rocket question
clear;
clc;
h=0.01;
up=30;
t=0:h:up;
n=length(t);
fprintf('\nfrom t=0 to t=%d\n',up);
sum=rocket(t(1))
for i=2:n-1
    sum=sum+2*rocket(t(i));
end
sum=sum+rocket(t(n));
integ=(h/2)*sum;
fprintf('\ncomposite tropezoidal method\n')
fprintf('\nthe distance is equal to %f\n',integ)