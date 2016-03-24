clc;
clear;
x0 = -2 % initial value
x1 = 0 % initial value
error = 4; % random value  
while abs(error) >= 1e-4
  x2 = (x0 + x1) / 2
  error = bernoulli(x2)
  if bernoulli(x0) * bernoulli(x2) < 0
    x1 = x2
  else
    x0 = x2
  end
end
fprintf('using bisection method,approximate root = %f\n', x2)
r = fzero('bernoulli', -2)
