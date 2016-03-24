clc;
clear;

kx = 1.53; % kx' = 1.53 kmol/m^2*h
ky = 1.03; % ky' = 1.03 kmol/m^2*h
xA_L = 0.1; % avarage mol fraction of liquid A
yA_G = 0.7; % avarage mol fraction of gase A

xA = [0 0.1 0.2 0.25 0.3 0.35]; % experimental xA data 
yA = [0 0.155 0.340 0.465 0.650 0.905]; % experimental yA data 

p = polyfit(xA, yA, 2); % polynomial fitting respect to experimental xA and yA
xp = 0:0.01:0.4; % x axis for fitting plot
yp = polyval(p, xp); % fitting value (yA)
x = linspace(0.1,0.4,length(xp)); 

eps = 0.001; % tolerans of intersection point for curve and slope line 
Bix0 = 1; % initial value assumed EMZD 
Biy0 = 1; % initial value assumed EMZD 
for i = 1:5 % loop for iteration to find xA_i and yA_i
  m = (-kx/Bix0)/(ky/Biy0); % slope   
  y = m * (x - 0.1) + 0.7; % linear equation has initial points are xA_L = 0.1, yA_G = 0.7
  idx = find(y - yp <= eps,1); % index of intersection point 
  xA_i = xp(idx); % value of xA_i @ index at xp array
  yA_i = yp(idx); % value of yA_i @ index at xp array
  Biy = ((1-yA_G)-(1-yA_i))/(log((1-yA_G)/(1-yA_i))); % general formula for Biy
  Bix = ((1-xA_L)-(1-xA_i))/(log((1-xA_L)/(1-xA_i))); % general formula for Biy
  Biy0 = Biy; % changing variable to continue loop
  Bix0 = Bix; % changing variable to continue loop
  hold on
  plot(xA,yA,'o',xp,yp,'g',x,y) % plot of all obtained lines and curves at same graph
  set(gca,'YLim',[0 1])
  set(gca,'YTick',[0:0.1:1])
  set(gca,'XLim',[0 1])
  set(gca,'XTick',[0:0.1:1])
  grid
  xlabel('xA')
  ylabel('yA')
  legend('experimental','fitting data')
  title('interphase diagram')
  hold off
end    
xA_i % interphase of liquid
yA_i % interphase of gase
m
Bix0
Biy0

NA_y = (ky/Biy)*(yA_G - yA_i) % flux of gase component of A 
NA_x = (kx/Bix)*(xA_i - xA_L) % flux of liquid component of A
NA_avg = (NA_y + NA_x) / 2 % avarage flux of A