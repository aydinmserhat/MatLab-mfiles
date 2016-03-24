clc
clear
x = -10:.1:10; % define points for independent variable
y1 = (sin(x)./x).^2; % "dot" operator squares individual elements
% and not the whole array
y2 = 3*sin(abs(x));
subplot(2,1,1); % Divide figure into 1x2 array of plots and start with #1
plot(x,y1,x,y2,'r'); % Plot both data sets an same scale
subplot(2,1,2); % Put next plot in second slot
plotyy(x,y1,x,y2)