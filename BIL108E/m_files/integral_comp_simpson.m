clc;
clear;
n=input('enter an even number : '); % segment number
if rem(n,2)==1
disp('n is not even')
break
end
f=[400 -900 675 -200 25 0.2];
a=0;
b=0.8;
h=(b-a)/n;
xn=linspace(a,b,n+1);
yn=polyval(f,xn);
Ics=(h/3)*(yn(1)+yn(n+1));
for i=2:n
    if rem(i,2)<1
    Ics=Ics+(h/3)*4*yn(i);
    else
    Ics=Ics+(h/3)*2*yn(i);
    end
end
Ics