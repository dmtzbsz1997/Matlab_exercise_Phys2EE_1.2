
 %Question 1, 2, 3
    lambda = 2.0e-3; % wavelength (8.0 mm)
    scrnDist = 5.0e-2; % distance to the screen (50 mm)
    scrnWdth = 2.4e-2; % width of the screen (+/- 12 mm)
    srcSepn = 1.2e-2;  %separation of source (1.2cm)
    xs = [0 , 0]; % x-coord of the source
    ys =  [ -srcSepn/2, srcSepn/2]; % y-coord of the source
    A = 1; % amplitude of the source
    N = 500;
    xd=linspace(0,scrnDist,N);
    yd=linspace(-scrnWdth/2,scrnWdth/2,N);
    [X0,Y0] = meshgrid(xd,yd);
    [X1,Y1] = meshgrid(xd-xs(1),yd-ys(1));
    [X2,Y2] = meshgrid(xd-xs(2),yd-ys(2));
    r1 = sqrt(X1.^2 + Y1.^2);
    r2 = sqrt(X2.^2 + Y2.^2);
    E0 = A*cos(2*pi*r1/lambda)./r1 + A*cos(2*pi*r2/lambda)./r2;
    mesh(X0,Y0,E0)
    %contour(X0,Y0,E0, 'ShowText','on')
