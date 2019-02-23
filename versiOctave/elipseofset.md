octave:4> diary on
octave:5> Sx =1 ;
octave:6> Sy =1;
octave:7> Nx = 20;
octave:8> Ny = 20;
octave:9> dx = Sx/Nx;
octave:10> xa = [0:Nx-1]*dx;
octave:11> xa = xa - mean(xa);
octave:12> dy = Sy/Ny;
octave:13> ya = [0:Ny-1]*dy;
octave:14> ya = ya - mean(ya);
octave:15> [Y, X] = meshgrid(ya, xa);
error: invalid use of script /home/afaozi/antenna/fdtd/versiOctave/meshgrid.m in index expression
octave:15> xc = -0.15l
parse error:

  syntax error

>>> xc = -0.15l
              ^

octave:15> xc = -0.15;
octave:16> yc = +0.25;
octave:17> rx = 0.4;
octave:18> ry = 0,2;
ry = 0
octave:19> ry = 0.2
ry =  0.20000
octave:20> A = (((X-xc)/rx).^2+ ...
> ((Y-yx)/ry).^2)<=1;
error: 'X' undefined near line 1 column 8
octave:20> diary off
