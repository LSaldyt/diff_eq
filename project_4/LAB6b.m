function LAB6
omega0 = 2; c = 1; omega = 1.4; a = 0;
if omega0 > omega
    a = atan((c * omega) / (omega0 * omega0 - omega * omega))
else
    a = atan((c * omega) / (omega0 * omega0 - omega * omega)) + 3.1415
end
param = [omega0,c,omega,a];
t0 = 0; y0 = 0; v0 = 0; Y0 = [y0;v0]; tf = 50;
options = odeset('AbsTol',1e-10,'RelTol',1e-10);
[t,Y] = ode45(@f,[t0,tf],Y0,options,param);
y = Y(:,1); v = Y(:,2);
t1 = 25; i = find(t>t1);
C = (max(Y(i,1)) - min(Y(i,1))) / 2;
y = y - C * cos(omega * t - a)
figure(1)
plot(t,y,'b-'); ylabel('y'); grid on;
disp(['computed amplitude of forced oscillation = ' num2str(C)]);
Ctheory = 1/sqrt((omega0^2-omega^2)^2+(c*omega)^2);
disp(['theoretical amplitude = ' num2str(Ctheory)]);

function dYdt = f(t,Y,param)
y = Y(1); v = Y(2);
omega0 = param(1); c = param(2); omega = param(3); a = param(4);
dYdt = [ v ; cos(omega*t)-omega0^2*y-c*v ];
