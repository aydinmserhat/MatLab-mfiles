x0minus1 = 2.5
fx0minus1 = polyval(fx,x0minus1)

% Iteration 1
fx0 = polyval(fx,x0)
secx1 = x0 - ((fx0)*(x0minus1 - x0)/(fx0minus1 - fx0))

% Iteration 2
sx01 = polyval(fx,secx1)
secx2 = secx1 - ((sx01)*(x0 - secx1)/(fx0 - sx01))

% Iteration 3
sx02 = polyval(fx,secx2)
secx3 = secx2 - ((sx02)*(secx1 - secx2)/(sx01 - sx02))