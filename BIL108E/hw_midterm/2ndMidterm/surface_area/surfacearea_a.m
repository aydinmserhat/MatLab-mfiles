w=[70 75 77 80 82 84 87 90]; % weight
A=[2.10 2.12 2.15 2.20 2.22 2.23 2.26 2.30]; %area
p=polyfit(w,A,2);
w_95=polyval(p,95);
w_quad = 70:0.1:95;
A_quad = polyval(p, w_quad);
plot(w,A,'*',w_quad,A_quad,'g')
grid

%w_95 = 2.3641
%h = 180 cm