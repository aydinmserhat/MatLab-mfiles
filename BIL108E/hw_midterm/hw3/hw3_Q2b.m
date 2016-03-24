clear;
clc;
fx = [1 -6 11 -6.1]; % fx is (x3-6x2+11x-6.1) polinom
x0 = 3.5

% Iteration 1
f1 = polyval(fx,x0);
fp1 = polyder(fx);
fprime1 = polyval(fp1,x0);
x1 = x0 - (f1/fprime1)

% Iteration 2
f2 = polyval(fx,x1);
fp2 = polyder(fx);
fprime2 = polyval(fp2,x1);
x2 = x1 - (f2/fprime2)

% Iteration 3
f3 = polyval(fx,x2);
fp3 = polyder(fx);
fprime3 = polyval(fp3,x2);
x3 = x2 - (f3/fprime3)