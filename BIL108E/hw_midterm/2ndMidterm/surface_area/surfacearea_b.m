clc
clear
w=[70 75 77 80 82 84 87 90]; % weight
A=[2.10 2.12 2.15 2.20 2.22 2.23 2.26 2.30]; %area
Al_95=interp1(w,A,95,'spline') %spline is used for calculating the 95 out of range


