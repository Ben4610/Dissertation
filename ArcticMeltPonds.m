% Zebra (contour/ density) plot
% (Used to model global warming and the fractual structure of artic ponds!)

%Zebra plot of f
f = randnfun2(0.1);
plot(f,'zebra'), axis off
%title("Zebra plot of 2D random function")

%Like pouring water onto a surface or modelling a fractural structure (like
%ponds in the artic or global warming)
% Snow melts absorbs more sunlight and more snow melts

for h = 4:-0.05:-4
    plot(f+h, 'zebra')
    axis off
    drawnow
    %title("Modelling artic ponds structure")
end