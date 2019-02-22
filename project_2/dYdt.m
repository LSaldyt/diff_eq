function dYdt = f(t,Y,a,b,c,d)
y = Y(1); v = Y(2)
dYdt = [v; cos(t) - 4*v - 3*y];
end
