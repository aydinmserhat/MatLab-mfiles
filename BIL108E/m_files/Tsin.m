function y=Tsin(x,n)
y=0;
for k=0:(n-1)
    y=y+(-1)^k*(x*pi/180)^(2*k+1)/factorial(2*k+1);
end