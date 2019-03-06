function LAB05ex1
m = 1;
% mass [kg]
k = 4;
% spring constant [N/m]
omega0 = sqrt(k/m);
y0 = 0.1; v0 = 0;
% initial conditions
[t,Y] = ode45(@f,[0,10],[y0,v0],[],omega0); % solve for 0<t<10
y = Y(:,1); v = Y(:,2);
% retrieve y, v from Y
figure(1); plot(t,y,'b+-',t,v,'ro-');
% time series for y and v
grid on;
% Legend!
legend('y(t)', 'v(t)');
%-----------------------------------------
function dYdt = f(t,Y,omega0)
y = Y(1); v = Y(2);
dYdt = [ v ; -omega0^2*y ];
