clc
clear
x0=2.5;
error=x0.^3-2*x0.^2-5;
while abs(error)>=1e-5
    f=x0.^3-2*x0.^2-5;
    df=3*x0.^2-4*x0;
    x1=x0-f/df;
    error=x1.^3-2*x1.^2-5;
    x0=x1;
end
x1