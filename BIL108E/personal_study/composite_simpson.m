%composite simpson rule 
clear;
clc;
h=0.01;%height
lower=0; % alt sinir
upper=pi/4; % ust sinir
x=0:h:pi/4; % aralik
n=length(x); % segment of x
sum=0;
for i=1:2:n-1
    sum=sum+4*composite(x(i));
end
for j=2:2:n-2
    sum+sum+2*composite(x(j));
end
sum=sum+composite(a)+composite(b);
integral=(h/3)*sum;
fprintf('integral is %f\n',integral)
fprintf('\ncomposite simpson method\n')