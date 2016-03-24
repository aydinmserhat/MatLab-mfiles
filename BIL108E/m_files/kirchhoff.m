clc
clear
R1=1;
R2=1;
R3=2;
R4=1;
R5=2;
R6=4;
E1=23;
E2=29;
E3=0;
A=[R1+R3+R4, R3, R4; R3, R2+R3+R5, -R5; R4, -R5, R4+R5+R6];
B=[E1; E2; E3];
I=A\B;
I1=I(1)
I2=I(2)
I3=I(3)