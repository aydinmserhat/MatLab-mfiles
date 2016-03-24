clc
clear
x=[1988 1989 1991 1993 1995 1996 1997 2001];
%each year rounded according to month 6, 
%if the month is after June,
%round it to the next year.
y=[4.5 5 6 6.5 7 7.5 8 8];
yl_2003=interp1(x,y,2003,'pchip')