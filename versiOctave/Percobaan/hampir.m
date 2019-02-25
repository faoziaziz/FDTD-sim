Sx = 1;
Sy = 1;
Nx = 21;
Ny = 21;

% Grid array
dx = Sx/Nx;
xa = [0:Nx-1]*dx;
xa = xa -mean(xa);
dy = Sy/Ny;
ya = [0: Ny-1]*dy;
ya = ya -mean(ya);
[Y, X]= meshgrid(ya, xa);

ER =abs(X)<=0.075| abs(Y)<-0.075;

B = exp(-(X.^2+Y.^2)/0.1^2);

ER = fft2(ER).*fft2(B)/sum(B(:));
ER = ifftshift(real(ifft2(ER)));

ER= ER> 0.4;
