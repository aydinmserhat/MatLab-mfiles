clc;
clear;

a = 29005.42;
b = 0.081;
R = 8.3144;
T = 350;
P = 946;

i = 1;
V1(i) = 3.076; % initial value from ideal gas equation
V2(i) = 0.081; % intial value from b constant 


for i = 1:10
  V1(i+1) = R*T/P + b - (a*T.^-0.5/P)*(V1(i)-b)/(V1(i)*(V1(i)+b));
  V2(i+1) = b + V2(i)*(V2(i)+b)*(R*T+b*P-P*V2(i))/(a*T.^-0.5);
end
V1(i+1)
V2(i+1)

fprintf('iterasyon sayisi = %d\n\r', i)

fprintf('Redlich/Kwong equation state for oversaturated vapor; V = %f\n\r' , V1(i+1))

fprintf('Redlich/Kwong equation state for oversaturated liquid; V = %f\n\r' , V2(i+1))