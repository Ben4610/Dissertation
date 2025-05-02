% ODE Example DuffingEq
L = chebop(0, 500);                     
L.op = @(x,u) diff(u,2) + 0.2*diff(u) - u + 1.1*u^3 + 0.3*cos(1.5*x); 
L.lbc = @(u) [u-0.01; diff(u)-0.1]; % Intial condition/start point
u = L\0;

figure;
plot(u, diff(u), 'LineWidth', 1);
xlabel('u(x)');
ylabel('u''(x)');
grid on;