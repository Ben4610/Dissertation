% Random ODE example
figure;
subplot(1,2,1)
f = randnfun(0.1,[0 100],'big');
R = chebop(0,100);
R.op = @(u)  diff(u) + u -0.1*f; R.lbc =1;
u = R\0; plot(u)

subplot(1,2,2)
f1 = randnfun(0.1,[0 100]);
R1 = chebop(0,100);
R1.op = @(u1)  diff(u1) + u1 -0.1*f1; R1.lbc =1;
u1 = R1\0; plot(u1)


