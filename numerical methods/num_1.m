clc;
clear;
x0 = -2;
x1 = 1;
error = 4;
while abs(error) >= 1e-3
  x2 = (x0 + x1) / 2;
  error = f(x2);
  if f(x0) * f(x2) < 0
    x1 = x2;
  else
    x0 = x2;
   end
end
fprintf('using bisection method,approximate root = %f\n', x2)
r = fzero('f',2);
fprintf('from fzero command absolute root = %f\n', r)