clc
clear

n = input('bir deger girin')
for h = 1:n
    V(h) = cos(h)+2*h;
end
plot(1:n, V)
