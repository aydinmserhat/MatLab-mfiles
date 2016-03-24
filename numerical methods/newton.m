clc;
clear;

x0 = 1.5;
error = x0.^4 - x0.^2 -4;

while abs(error) >= 0.00001
  f = x0.^4 - x0.^2 -4;
  df = 4*x0.^3 - 2*x0;
  x1 = x0 - f/df
  x0 = x1;
  error = x1.^4 - x1.^2 -4;
  end
x1
                          