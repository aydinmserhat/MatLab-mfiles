clc;
clear;
N0 = 0
N1 = 2.5*10^10
error = 1;
for i = 1:12
  N2 = (N0 + N1) / 2
  error = myfun(N2);
  if myfun(N0) * myfun(N2) < 0
    N1 = N2
  else
    N0 = N2
  end
end 

  