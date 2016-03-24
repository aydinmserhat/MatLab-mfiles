clc
clear
v=[5 17 -3 8 0 -1 12 15 20 -6 6 4 -7 16];
for x=1:length(v);
    a=rem(v(x),3);
    b=rem(v(x),5);
    if v(x)>0 && (a==0 || b==0)
        v(x) = v(x)*2;
    elseif v(x)<0 && v(x)>-5
        v(x)=v(x)^3;
    else
        v(x)=v(x);
    end
end
v