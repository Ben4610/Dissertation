%Complex Example Chebfun2
f = chebfun2(@(z)z^3,2*pi*[-1 1 -1 1], 'vectorise');
f1 = chebfun2(@(z)cos(z+1),2*pi*[-1 1 -1 1], 'vectorise');
figure;
subplot(1,2,1)
plot(f)
subplot(1,2,2)
plot(f1)