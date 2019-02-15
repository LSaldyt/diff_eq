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

e5 = y(end) - y5(end)
e50 = y(end) - y50(end)
ratio = e5/50

[t500,y500] = euler(f,[0,.5],3,500);
[t5000,y5000] = euler(f,[0,.5],3,5000);


e500 = y(end) - y500(end)
e5000 = y(end) - y5000(end)

ratio5 = e5/e5
ratio50 = e5/e50
ratio500 = e5/e500
ratio5000 = e5/e5000

y5(end)
y50(end)
y500(end)
y5000(end)

% TODO: 1b, 1c, formatting & writeup

% Problem 2

t = 0:.45:10; y = -30:6:42;
[T, Y] = meshgrid(t, y);
dT = ones(size(T));
dY = -2*Y;
quiver(T,Y,dT,dY)
axis tight
hold on

%%
% \begin{tabular}{l c c c}
% N & approximation & error & ratio \\
% \end{tablular}
%%
x = 2;
