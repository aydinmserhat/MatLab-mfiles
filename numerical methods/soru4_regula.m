clc;
clear;

N0 = 0
N1 = 2.5*10^10
%error = 4; % random value
for i  = 1:5
  N2 = N1 - myfun(N1)*(N1 - N0)/(myfun(N1) - myfun(N0))
  %error = myfun(N2);
  if myfun(N0) * myfun(N2)  < 0
    N0 = N2
  else
    N1 = N2
  end
end
fprintf('using Regula Falsi Method, approximately error = %f\n' , N2)
real = fzero('myfun' , N1 )
fprintf('real root  = %f\n' , real)
  