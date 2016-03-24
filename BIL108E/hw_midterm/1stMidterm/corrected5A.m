clear;
clc;
numerator=0;
for n=1:10^-6
    a=(1).^(n+1)./(2.*n-1); 
    sum(a);
    numerator;
       if sum(a)-(pi/4)<10^(-6)
       break
       end
end
