clc
clear
hours=input('enter total hours...');
wage=input('enter hourly wage...');
if hours<=40
    pay=hours*wage;
else
    pay=40*wage+(hours-40)*(wage*1.5);
end
pay