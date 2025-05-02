%Lorenz 
f = chebop(0,30); f.lbc = [-1;-5; 10];
f.op = @(t,u,v,w) [diff(u)-10*(v-u);
diff(v)-u*(28-w)+v; diff(w)-u*v+(8/3)*w];
[u,v,w] = f\0;
figure;
plot(u,w)
figure;
plot3(u,v,w)