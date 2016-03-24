clc;
clear;

a = -10:0.1:10 ;
y = func(a);
plot(a,y , 'r*')
grid on

r = fzero('func', 2)