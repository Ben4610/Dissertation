%Rossler System
 f = chebop(0,300); f.lbc = [10; 0; 1];
 f.op = @(t,u,v,w) [diff(u)+v+w; diff(v)-u-.2*v; diff(w)-.2-w*(u-2)];
 [u,v,w] = f\0; 
 subplot(1,2,1), plot3(u,v,w)
 subplot(1,2,2), plot(u{200,300},v{200,300})