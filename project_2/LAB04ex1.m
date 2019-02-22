% function ex_with_param
% t0 = 0; tf = 3; y0 = 1;
% a = 1;
% [t, y] = ode45(@f, [t0, f0], y0, [], a);
% 
% function dydt = f(t, y, a)

%% dydt = -a * (y - exp(-t)) - exp(-t);


function LAB04ex1
t0 = 0; tf = 40; 
y0 = [1.5, 0];
% y0 = [10, 60];
[t,Y] = ode45(@dYdt,[t0,tf],y0) %,[])%,a,b,c,d);
y = Y(:,1); v = Y(:,2);
figure(1);
plot(t, y, 'b-+'); ylabel('y'); 
hold on
plot(t, v, 'ro-'); ylabel('v');
legend('y(t)', 'v(t) = y’(t)');
xlabel('t');
ylim([-1.5, 1.5]);
grid on;
hold off
figure(2);
plot(y, v); axis square; xlabel('y'); ylabel('v'); % plot the phase plot
ylim([-1.5, 1.5]);
xlim([-1, 1]);
grid on;
[t, Y]

function dYdt = f(t, Y) % f(t,Y,a,b,c,d)
y = Y(1); v = Y(2)
dYdt = [v; cos(t) - 4*v - 3*y];


