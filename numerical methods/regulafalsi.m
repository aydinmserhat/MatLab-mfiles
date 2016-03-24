% Regula Falsi Method
clc;
clear;

x0 = 2;
x1 = 3;
error = 4;
while error >= 1e-3
  x2 = x1 - (regula(x1)*(x1- x0)) / (regula(x1) - regula(x0));
  error = regula(x2);
  if regula(x2) < 0
    x0 = x2;
  else
    x1 = x2;
  end
end

fprintf('using Regula Falsi Method,approximately root = %f\n', x2)
r = fzero('regula' , 2);
fprintf('real root = %f\n', r)