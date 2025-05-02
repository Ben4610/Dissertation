%Randnfun(1D) for periodic and non-periodic random functions
%rng(0) will set a seed
f = randnfun(0.1,[0,5]);
f1 = randnfun(1,[0,5]);

figure;
subplot(1,2,1)
plot(f, 'b')
hold on 
plot(cummax(f), 'g')
plot(cummin(f), 'r')
title('\lambda = 0.1 on [0,5]')
subplot(1,2,2)
plot(f1, 'b')
hold on 
plot(cummax(f1), 'g')
plot(cummin(f1), 'r')
title('\lambda = 1 on [0,5]')