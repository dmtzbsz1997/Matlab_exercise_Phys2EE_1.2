function ex1SinglePoint()
    %Question 1, 2, 3
    lambda = 4.0e-3; % wavelength (8.0 mm)
    scrnDist = 5.0e-2; % distance to the screen (50 mm)
    scrnWdth = 2.4e-2; % width of the screen (+/- 12 mm)
    xs = 0; % x-coord of the source
    ys = 0; % y-coord of the source
    A = 1; % amplitude of the source
    N = 500;
    xd=linspace(xs,scrnDist,N);
    yd=linspace(-scrnWdth/2,scrnWdth/2,N);
    [X,Y] = meshgrid(xd,yd);
    r=sqrt((X.^2)+(Y.^2));
    E4=((A)*cos(-2*pi*r/lambda))./r;
    mesh(X,Y,E4)
    %Question 4
    figure;
    lambda = 2.0e-3; % wavelength (2.0 mm)
    E2=((A)*cos(-2*pi*r/lambda))./r;
    mesh(X,Y,E2)
    figure;
    lambda = 8.0e-3; % wavelength (8.0 mm)
    E8=((A)*cos(-2*pi*r/lambda))./r;
    mesh(X,Y,E8)
return;
