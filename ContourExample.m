f = @(x,y) sin(x.^2 + y.^2).* sin(3*y);
x = -4:0.05:4;                         % x
y = -2:0.05:2;                         % y 
[xx, yy] = meshgrid(x, y);             
clf;                                   
contour(x, y, f(xx, yy), -0.5:0.05:0.5); % -0.5 to 0.5 level
axis([-4 4 -2 2]);                    
colormap('jet');                       % Make colormap more visible 
colorbar;                       
grid on;                               
xlabel('x'); ylabel('y');

Intx = @(y) sum(chebfun(@(x) f(x,y),[-4 4]));
Intxy = sum(chebfun(@(y) Intx(y),[-2 2],'vectorize'))
f_cheb = chebfun2(f, [-4 4 -2 2]);
I_cheb2 = sum2(f_cheb);
fprintf('Chebfun2 integral: %.10f\n', I_cheb2);
