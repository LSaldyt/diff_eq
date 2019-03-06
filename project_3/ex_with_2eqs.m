% function ex_with_param
% t0 = 0; tf = 3; y0 = 1;
% a = 1;
% [t, y] = ode45(@f, [t0, f0], y0, [], a);
% 
% function dydt = f(t, y, a)

%% dydt = -a * (y - exp(-t)) - exp(-t);

function ex_with_2eqs
t0 = 0; tf = 20; y0 = [10;60];
a = .8; b = .01; c = .6; d = .1;
[t,y] = ode45(@f,[t0,tf],y0,[],a,b,c,d);
u1 = y(:,1); u2 = y(:,2);
figure(1);
subplot(2,1,1); plot(t,u1,'b-+'); ylabel('u1');
subplot(2,1,2); plot(t,u2,'ro-'); ylabel('u2');
figure(2)
plot(u1,u2); axis square; xlabel('u_1'); ylabel('u_2'); % plot the phase plot
end

function dydt = f(t,y,a,b,c,d)
u1 = y(1); u2 = y(2);
dydt = [ a*u1-b*u1*u2 ; -c*u2+d*u1*u2 ];
end


% function dYdt = f(t, Y)
% y = Y(1); v = Y(2);
% dYdt = [v; cos(t) - 4*v - 3*y];
% end
% 
% plot(t, y);
% plot(t, v);
% plot(v, y);
