clc
clear
syms x; 
Tay_expx = taylor(exp(x),5,x,3)
ezplot(Tay_expx)
hold on
ezplot(exp(x))
hold off