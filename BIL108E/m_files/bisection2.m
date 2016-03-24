clc
clear
x0=3;
x1=4;
error=4;%a random starting value for error
while abs(error)>=1e-6%approximate acceptable error
    x2=(x0+x1)/2;
    error=x2-x2.^(1/3)-2;
    if (x1-x1.^(1/3)-2)*(x2-x2.^(1/3)-2)>0
        x1=x2;
    else
        x0=x2;
    end
end
x2