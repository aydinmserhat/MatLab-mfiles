clc;
clear;

n = 4; % segment number
a = 0; % lower border
b = 0.8; % upper border
h = (b-a)/n;
x = a:h:b;
sum = 0;

for i = 1:2:n-1
  sum = sum + 4*multi_simp(x(i+1));
end

for j = 2:2:n-2
  sum = sum + 2*multi_simp(x(j+1));
end
sum = sum + multi_simp(a) + multi_simp(b);
I = h * (sum/3) 