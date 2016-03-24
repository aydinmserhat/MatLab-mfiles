clc;
clear;
T = input('please enter the temperature(K) above from 298 K : ');
n_NH3 = input('please enter kmole for ammonia : ');
R = 8.3144;
n_O2 = n_NH3*5/4;
ABD_NH3 = [3.578 3.020*10^-3 -0.186*10^-5]; % constants of A, B, D for ammonia from table
ABD_O2 = [3.639 0.506*10^-3 -0.227*10^-5]; % constants of A, B, D for oxygen from table

NH3 = n_NH3 * ABD_NH3;
O2 = n_O2 * ABD_O2;

A_reactants = NH3(1) + O2(1); % sum of A for reactants
B_reactants = NH3(2) + O2(2); % sum of B for reactants
D_reactants = NH3(3) + O2(3); % sum of D for reactants


n_NO = n_NH3; % unite is kmole for nitric oxide
n_H2O = n_NH3*6/4; % unite is kmole for H2O
ABD_NO = [3.387 0.629*10^-3 0.014*10^-5]; % constants of A, B, D for NO from table
ABD_H2O = [3.470 1.45*10^-3 0.121*10^-5]; % constants of A, B, D for H2O from table

NO = n_NO * ABD_NO; % kmole times A, B, D for NO 
H2O = n_H2O * ABD_H2O; % kmole times A, B, D for H2O

A_products = NO(1) + H2O(1); % sum of each products's A 
B_products = NO(2) + H2O(2); % sum of each products's B 
D_products = NO(3) + H2O(3); % sum of each products's D 


delta_A = A_products - A_reactants; % sum of products's A value minus reactants
delta_B = B_products - B_reactants; % sum of product's B value minus reactants
delta_D = D_products - D_reactants; % sum of products's D value minus reactants

Hf_NO = 90250 * n_NO;
Hf_H2O = -241818 * n_H2O;
Hf_NH3 = -46110 * n_NH3;
delta_Hr = (Hf_NO + Hf_H2O) - (Hf_NH3);  % standard heat of formation

delta_Cp = R*(delta_A*(T-298) + (delta_B/2)*(T^2-298^2) - (delta_D)*(T^-1-298^-1)); % integral's already taken

delta_H = delta_Hr + delta_Cp;
fprintf ( 'standard heat of reaction ∆H = %0.3f kj, for %0.3f kmol NH3, using T = %0.2f K\r\n' , delta_H,n_NH3,T )




