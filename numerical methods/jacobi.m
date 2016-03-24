clc;
clear;

i = 1;
x(i) = 0; % intial value of x
y(i) = 0; % initial value of y
z(i) = 0; % initial value of z

%error_x(i) = 45;

while i <= 3 % random iteration to compare jacobi and gauss seidel
  x(i+1) = (-4*y(i) - z(i) -17)/9;
  y(i+1) = (4 - x(i))/6;
  z(i+1) = (-x(i) + 2*y(i) + 14)/-6;
  i = i + 1;
end  
fprintf('result x(i)  = %f\n' , x(i)) 
fprintf('result y(i) = %f\n' , y(i))
fprintf('result z(i) = %f\n' , z(i))
fprintf('iteration numbers = %d\n', i)
