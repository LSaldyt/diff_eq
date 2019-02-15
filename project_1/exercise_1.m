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
