clear;
clc;
exact=0.97377;
first=250;
last=270;
segment=16;
h=(last-first)/segment;
y=250:h:270
n=length(y);
sum=toiletpaper(y(1));
for i=2:n-1
    sum=sum+2*toiletpaper(y(i));
end
sum=sum+toiletpaper(y(n));
integ=(h/2)*sum;
error=(integ-exact)
fprintf('\ncomposite tropezoidal method\n')
fprintf('the integral is equal to %f\n',integ)
fprintf('the absolute error is %f\n',error)


