%generate Meshgrid
xa = [1:5];
ya = [3:9];

[Y, X] = meshgrid(ya, xa);

% standard meshgrid

xa = [0:Nx-1]*dx;
ya = [0:Ny-1]*dy;
[X,Y]=meshgrid(xa, ya);

% revised use meshgrid 
xa = [0:Nx-1]*dx;
ya = [0:Ny-1]*dy;
[Y, X]=meshgrid(ya, xa);
Nx = 10;
Ny = 10;
A = zeros(Nx, Ny);
nx1 = 3;
nx2 = 6;
ny1 = 4;
ny2 = 8;
A(nx1:nx2, ny1:ny2)=1;