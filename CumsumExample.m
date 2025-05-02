%Using sum and cumsum to find definite and indefinite integrals
interval  = [-20,20];
f = chebfun('cos(x)', interval);
definite = sum(f)
indefinite = cumsum(f)
Integral = indefinite(20)-indefinite(-20)

figure;
plot(indefinite)


% f1 = chebfun('sin(x)',interval);
% 
% figure;
% plot(indefinite)
%title('Indefinite Integral of cos(x) on [-20,20]')
% figure;
% plot(f1)
% title('sin(x)')
%Integrand2 = indefinite(1)-indefinite(-1) %Same as sum on interval [-1,1]. Same as integral of cos from -1 to 1
%Integrand1 = indefinite(20)-indefinite(-20) %Same as sum on interval
%[-20,20]. Same as integral of cos from -20 to 20
%Integrand3 = indefinite(10)-indefinite(-10) %Same as sum on interval [-10,10]. Same as integral of cos from -10 to 10