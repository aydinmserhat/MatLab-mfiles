sum=rocket(t(1));
for i=2:2:n-1 % for even numbers from 2 to n-1
    sum=sum+4*rocket(t(i));
end
for i=3:2:n-1 %for single numbers from 3 to n-1
    sum=sum+2*rocket(t(i));
end
sum=sum+rocket(t(n))
integ=(h/3)*sum;
fprintf('\ncomposite simpson method')
fprintf('\nthe distance is equals to %f\n',integ)
