clc;
clear;

x0 = 0
i = 0 ;
while i <= 8
  p = fun1(x0)
  x0 = p;
  i = i + 1;
end
p