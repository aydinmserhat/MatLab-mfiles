clc
clear
syms k x
symsum((-1)^k*x^(2*k+1)/ sym('(2*k+1)!'),k,0,Inf)
