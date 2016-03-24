x=[1988 1989 1991 1993 1995 1996 1997 2001]; 
%each year rounded according to month 6, 
%if the month is after June,
%round it to the next year.
y=[4.5 5 6 6.5 7 7.5 8 8];
p=polyfit(x,y,1); %linear equation
x_2003=polyval(p,2003) %Nov 2002 rounded to 2003
x_lin=1988:1:2003;
y_lin=polyval(p, x_lin);
plot(x,y,'*',x_lin, y_lin)
grid
xlabel('date')
ylabel('price')
title('price in november')
