%Adding Noise
rng(1)
L = chebop(0, 20);
L.op = @(x, u) diff(u) - sin(x); 
L.lbc = 0;                        
u = L \ 0;                 

rng(1);                           
f = randnfun(0.1, [0, 20], 'big');
R = chebop(0, 20);
R.op = @(x, u) diff(u) - sin(x) + f; 
R.lbc = 0;                         
u_noise = R \ 0;                     

figure(3);
subplot(1,2,1);
plot(u, 'b', 'LineWidth', 2);
xlabel('x'); ylabel('u(x)'); grid on;

subplot(1,2,2);
plot(u_noise, 'r', 'LineWidth', 2);
xlabel('x'); ylabel('u(x)'); grid on;