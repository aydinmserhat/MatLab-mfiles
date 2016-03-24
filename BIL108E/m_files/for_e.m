clc
clear

x = 1.3

sonuc = 0;
for n = 0:20
    sonuc = sonuc + x^n/factorial (n);
end

sonuc
exp(1.3)