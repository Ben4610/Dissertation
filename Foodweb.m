%food web

a1=5;a2= 0.1;b2=2.6;d1=0.4;d2=0.01;
f1=@(z,b1)a1*z./(1+b1*z); 
f2= @(z)a2*z./(1+b2*z);
f=chebop(0,1000);b1= 2.5;
f.op=@(t,c,u,v)[diff(c)-(c*(1-c)-f1(c,b1)*u);
                diff(u)- (f1(c,b1)*u-f2(u)*v-d1*u);
                diff(v)- (f2(u)*v-d2*v)];
f.lbc=[.4;1;9]; [c,u,v] = f\0;
figure;
plot(u{0,1000})
