function y=rocket(t)
m0=140.000;
u=2000;
q=2100;
g=9.8;
y=u*log(m0./m0-q*t)-g*t;
