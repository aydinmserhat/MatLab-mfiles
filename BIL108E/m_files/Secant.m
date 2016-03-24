clc
clear
x1=0;
x2=4;
error=4;
while abs(error)>=1e-5
x3=x2-((x2.^3-2*x2.^2-5)*(x1-x2))/((x1.^3-2*x1.^2-5)-(x2.^3-2*x2.^2-5));
error=x3.^3-2*x3.^2-5;
if x3>x1
        x1=x3;
else
        x2=x3;
end
end
    x3