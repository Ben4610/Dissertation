% 2 Dimensional (invlving 2 variables) chebfuns
f = chebfun2(@(x,y)  sin(x.*y), [-1 1 -1 1], 'vectorise');
f1 = chebfun2(@(x,y) cos(x.*y), [-1 1 -1 1], 'vectorise');
f2 = chebfun2(@(x,y) exp(x.*y), [-1 1 -1 1], 'vectorise');
figure;
subplot(1,2,1)
plot(f), zlim([-2 2]), grid on;
subplot(1,2,2)
contour(f), grid on;
figure;
subplot(1,2,1)
plot(f1), zlim([-2 2]), grid on;
subplot(1,2,2)
contour(f1), grid on;
figure;
subplot(1,2,1)
plot(f2), zlim([-2 2]), grid on;
subplot(1,2,2)
contour(f2), grid on;