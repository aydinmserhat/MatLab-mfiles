x = 0:.01:4;
f = @(x) log(x.^2) - .7;
plot(x,f(x))
%Actual Value = 1.1912
 
%(b) using three iterations of the bisection method, with initial guesses
%of xl = 0.5 and xu = 2
 
x_l = .5;
x_u = 2;
 
for i = 1:3
 f_l = f(x_l);
 f_u = f(x_u);
 m = (x_l+x_u)/2;
 f_m = f(m);
 
 hold on
 plot (m,f_m, '*r')
 grid
if(f_l*f_m >0)
 x_l = m;
 else
 x_u = m;
 end
end
xlabel('x values')
ylabel('ln(x2)')
title('y=ln(x2)-0.7')