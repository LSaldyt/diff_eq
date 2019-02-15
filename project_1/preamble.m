%%
% 
%  Lucas Saldyt (1213399809)
% 


clear t y
y(1) = 3;
t(1) = 0;
h = 0.1;
f = @(t, y) 2 .* y;

y(2) = y(1) + h*f(t(1), y(1)), t(2) = t(1) + h;
y(3) = y(2) + h*f(t(2), y(2)), t(3) = t(2) + h;

y(1) = 3; t(1) = 0; h = 0.1;
for n = 1:5
    y(n + 1) = y(n) + h * f(t(n), y(n));
    t(n+1) = t(n) + h;
end

[t(:), y(:)]

[t, y] = euler(f, [0, .5], 3, 50);
[t, y]

[t5,y5] = euler(f,[0,.5],3,5); % use @f if defined in separate function
[t50,y50] = euler(f,[0,.5],3,50);
t = linspace(0,.5,100); y = 3*exp(2*t);
% evaluate the exact solution
figure
plot(t5,y5,'ro-',t50,y50,'bx-',t,y,'k-'); axis tight;
legend('Euler N = 5','Euler N = 50','Exact');f
