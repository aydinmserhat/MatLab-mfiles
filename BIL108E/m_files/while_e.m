clc
clear

x = 1.3;

sonuc = 0;
n = 0;
while abs (sonuc - exp(1.3)) > 1e-7
    sonuc = sonuc + x^n / factorial (n);
    n = n + 1;
end

sonuc
exp(1.3)
n