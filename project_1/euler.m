function [t, y] = euler(f, tspan, y0, N)

m = length(y0);
t0 = tspan(1);
tf = tspan(2);
h = (tf - t0)/N;
t = linspace(t0, tf, N+1);
y = zeros(m, N+1);
y(:,1) = y0';
for n = 1:N
    y(:,n+1) = y(:,n) + h*f(t(n), y(:,n));
end
t = t'; y = y';
end
