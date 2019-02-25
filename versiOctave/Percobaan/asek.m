Sx = 1;
Sy = 1;
Nx = 20;
Ny = 20;

dx = Sx/Nx;
xa = [0:Nx-1]*dx;
xa = xa-mean(xa);

dy = Sy/Ny;
ya = [0:Ny-1]*dy;
ya = ya-mean(ya);

[Y, X] = meshgrid(ya, xa);

y = -0.2+0.1*cos(4*pi*xa/Sx);
FS = zeros(Nx, Ny);
dy = Sy/Ny;
for nx = 1: Nx
  ny = round((y(nx)+Sy/2)/dy);
  FS(nx, ny:Ny)=1;
end

x1 = -0.5;
y1 = +0.5;
x2 = +0.5;
y2 = -0.5;
m = (y2-y1)/(x2-x1);
LHS = (Y-y1)-m*(X-x1)>0;

% Combine above
A = FS .* LHS;
