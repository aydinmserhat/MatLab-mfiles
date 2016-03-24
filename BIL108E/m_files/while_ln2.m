clc
clear

sum = 0;
k = 0;
relative_error=zeros(1,1e7);
while abs ((sum - log(2))/log(2)) >= 0.05
    k=k+1;
    sum = sum + (-1)^(k-1) / k;
    relative_error(k)= abs ((sum - log(2))/log(2));
end

k
plot(1:k,relative_error(1:k))