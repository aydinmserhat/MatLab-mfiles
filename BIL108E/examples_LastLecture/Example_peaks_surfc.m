[x,y,z]=peaks(30);
surfc(x,y,z)
shading interp
axis tight
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
view(45,60)