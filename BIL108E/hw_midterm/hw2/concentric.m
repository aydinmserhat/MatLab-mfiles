function drawCircle

center = [0, 0];
axis equal;
xlim([-6 6]);
ylim([-6 6]);
hold on;

    [x, y] = getCircle(center, 1);
    plot(x, y,'-r','LineWidth',12);
    [x, y] = getCircle(center, 2);
    plot(x, y,'-y','LineWidth',10);
    [x, y] = getCircle(center, 3);
    plot(x, y,'-g','LineWidth',8);
    [x, y] = getCircle(center, 4);
    plot(x, y,'-b','LineWidth',6);
    [x, y] = getCircle(center, 5);
    plot(x, y,'-r','LineWidth',4);
    
    
end

