%Chenfun3 example
f = chebfun3(@(x,y,z) x.^2+3.*y+x./7);
figure;
plotcoeffs(f)
figure;
plot(f)
