octave:2> diary on
octave:3> Sx = 1;
octave:4> Sy = 1;
octave:5> Nx = 20;
octave:6> Ny = 20;
octave:7> 
octave:7> dx = Sx/Nx;
octave:8> xa = [0:Nx-1]*dx;
octave:9> xa = xa-mean(xa);
octave:10> 
octave:10> dy = Sy/Ny;
octave:11> ya = [0:Ny-1]*dy;
octave:12> ya = ya-mean(ya);
octave:13> 
octave:13> [Y, X] = meshgrid(ya, xa);
octave:14> 
octave:14> y = -0.2+0.1*cos(4*pi*xa/Sx);
octave:15> FS = zeros(Nx, Ny);
octave:16> dy = Sy/Ny;
octave:17> for nx = 1: Nx
>   ny = round((y(nx)+Sy/2)/dy);
>   FS(nx, ny:Ny)=1;
> end
octave:18> 
octave:18> x1 = -0.5;
octave:19> y1 = +0.5;
octave:20> x2 = +0.5;
octave:21> y2 = -0.5;
octave:22> m = (y2-y1)/(x2-x1);
octave:23> LHS = (Y-y1)-m*(X-x1)>0;
octave:24> 
octave:24> % Combine above
octave:24> A = FS .* LHS;
octave:25> diary off
