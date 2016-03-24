function olympic

hold on;

    [x, y] = getCircle([-1 0], 0.4);
    plot(x,y,'-b','Linewidth',8);
    [x, y] = getCircle([0 0], 0.4);
    plot(x,y,'black','Linewidth',8);
    [x, y] = getCircle([1 0], 0.4);
    plot(x,y,'r','Linewidth',8);
    [x, y] = getCircle([-0.5 -0.5], 0.4);
    plot(x,y,'y','Linewidth',8);
    [x, y] = getCircle([0.5 -0.5], 0.4);
    plot(x,y,'g','Linewidth',8);
    
end

