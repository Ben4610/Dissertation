%Simple examples; creating chebfuns of elementary functions
interval = [-1,1];
f = chebfun('cos(x)', interval);
f1 = chebfun('sin(x)', interval);
f2 = chebfun('exp(x)', interval);


figure;
subplot(1,2,1)
plot(f)
title('cos(x)')
subplot(1,2,2)
plot(f,'.-')
title('cos(x) Data points')

%Error/accuracy evaluation
% figure;
% subplot(2,2,1)
% plot(f1)
% title('sin(x)')
% subplot(2,2,3)
% plot(f1,'.-')
% subplot(2,2,2)
% plot(f2)
% title('exp(x)')
% subplot(2,2,4)
% plot(f2,'.-')
% true = cos(interval);
% estim = f(interval);
% abserror = abs(true-estim);
% relerror = abserror ./ abs(true);
% relerror(true == 0) = abserror(true == 0);
% fprintf('x \t True cos(x) \t Chebfun Approx \t Abs Error \t Rel Error\n');
% fprintf('------------------------------------------------------------\n');
% for i = 1:length(interval)
%     fprintf('%2d \t %9.6f \t %9.6f \t %9.2e \t %9.2e\n', ...
%             interval(i), true(i), estim(i), abserror(i), relerror(i));
% end

