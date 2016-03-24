% composite tropeziodal rule
clear;
clc;
h=0.01; seperated each small part between a and b
a=0; % bottom border
b=pi/4; % up border
x=0:h:pi/4;
n=length(x);% segment of x 
sum=composite(x(1));
for i=2:n-1
    sum=sum+2*composite(x(i))
end
sum=sum+composite(b)+composite(a)
integral=(h/2)*sum;
fprintf('integral is %f\n',integral)
fprintf('\ncomposite tropeziodal method\n')