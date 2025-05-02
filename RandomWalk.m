%Random Walk Example
Interval = [0,10];
f = randnfun(0.01, Interval);
f1 = randnfun(0.1, Interval);
f2 = randnfun(1, Interval);

figure;
subplot(1,3,1)
plot(cumsum(f))
title('\lambda = 0.01')
subplot(1,3,2)
plot(cumsum(f1))
title('\lambda = 0.1')
subplot(1,3,3)
plot(cumsum(f2))
title('\lambda = 1')