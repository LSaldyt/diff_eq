y(1) = 3;
t(1) = 0;
h = 0.1;
f = @(t, y) 2.*y;

[t5, y5]   = euler(f, [0, .5], 3, 5);
[t50, y50] = euler(f, [0, .5], 3, 50);

t = linspace(0, 0.5, 100); y = 3 * exp(2 * t);
plot(t5, y5, 'ro-', t50, y50, 'bx-', t, y, 'k-') 
axis tight;
legend('Euler N = 5', 'Euler N = 50', 'Exact')
