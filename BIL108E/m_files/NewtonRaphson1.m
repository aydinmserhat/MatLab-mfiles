clc
clear
g=9.81;
cd=0.25;
t=4;
v=36;
m0=80;
error=sqrt((g*m0)/cd)*tanh((pi/180)*sqrt((g*cd*t)/m0))-v;
while abs(error)>=1e-6
    f=sqrt((g*m0)/cd)*tanh((pi/180)*sqrt((g*cd*t)/m0))-v;
    df=0.5*sqrt(g/(m0*cd))*tanh((pi/180)*sqrt((g*cd*t)/m0))-(g*t/(2*m0))*sech((pi/180)*sqrt((g*cd*t)/m0))^2;
    m1=m0-(f/df);
    error=sqrt((g*m1)/cd)*tanh((pi/180)*sqrt((g*cd*t)/m1))-v;
    m0=m1;
end 
m1

