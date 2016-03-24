clc
clear
x0=6;
x1=29;
error=4;%a random starting value for error

while abs(error)>=1e-6%approximate acceptable error
    x2=(x0+x1)/2;
    error=x2-(x2.^3 - 30*x2.^2 + 3000/pi);
    if (x1-(x1.^3 - 30*x1.^2 + 3000/pi))*(x2-(x2.^3 - 30*x2.^2 + 3000/pi))>0
        x1=x2;
    else
        x0=x2;
    end
end
display('aa')
x2