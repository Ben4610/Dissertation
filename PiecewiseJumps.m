% Define piecewise function with breakpoints
f= chebfun({@(x)3*x.^2,1,@(x)(4-x)./2,@(x)2.*x},0:4);

figure;
subplot(1,2,1)
plot(f)
xlabel('x')
ylabel('y')
title('f(x)')

subplot(1,2,2)
d = diff(f);
plot(d,'r'), ylim([-1,8])
xlabel('x')
ylabel('y')
title('f''(x)')