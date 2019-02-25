octave:2> diary on
octave:3> Sx = 1;
octave:4> Sy = 1;
octave:5> Nx = 20;
octave:6> Ny = 20;
octave:7> dx = Sx/Nx;
octave:8> xa = [0:Nx-1]*dx;
octave:9> xa =xa -mean(xa);
octave:10> dy = Sy/Ny;
octave:11> ya = [0:Ny-1]*dy;
octave:12> ya = ya - mean(ya);
octave:13> y = 0.2+0.1*cos(4*pi*xa/Sx);
octave:14> A = zeros(Nx, Ny);
octave:15> for nx = 1:Nx
> ny = round((y(nx)+Sy/2)/dy);
> A(nx, 1:ny)=1;
> end
octave:16> A
A =

 Columns 1 through 17:

   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0   0
   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   0

 Columns 18 through 20:

   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0

octave:17> diary off
