octave:9> diary on
octave:10> xa = xa - mean(xa);
octave:11> dy = Sy/Ny;
octave:12> ya = [0:Ny-1]*dy;
octave:13> ya = ya-mean(ya);
octave:14> y = -0.2+0.1*cos(4*pi*xa/Sx);
octave:15> FS = zeros(Nx, Ny);
octave:16> dy = Sy/Ny;
octave:17> for nx = 1: Nx
> ny = round((y(nx)+Sy/2)/dy);
> FS(nx, ny:Ny)=1;
> end
octave:18> x1 = -0.5;
octave:19> y1 = +0.5;
octave:20> x2 = +0.5;
octave:21> y2=-0.5;
octave:22> m = (y2-y1)/(x2-x1);
octave:23> Sx = 1;
octave:24> Sy = 1;
octave:25> Nx = 20;
octave:26> Ny = 20;
octave:27> 
octave:27> dx = Sx/Nx;
octave:28> xa = [0:Nx-1]*dx;
octave:29> xa = xa-mean(xa);
octave:30> 
octave:30> dy = Sy/Ny;
octave:31> ya = [0:Ny-1]*dy;
octave:32> ya = ya-mean(ya);
octave:33> 
octave:33> [Y, X] = meshgrid(ya, xa);
octave:34> 
octave:34> y = -0.2+0.1*cos(4*pi*xa/Sx);
octave:35> FS = zeros(Nx, Ny);
octave:36> dy = Sy/Ny;
octave:37> for nx = 1: Nx
>   ny = round((y(nx)+Sy/2)/dy);
>   FS(nx, ny:Ny)=1;
> end
octave:38> 
octave:38> x1 = -0.5;
octave:39> y1 = +0.5;
octave:40> x2 = +0.5;
octave:41> y2 = -0.5;
octave:42> m = (y2-y1)/(x2-x1);
octave:43> LHS = (Y-y1)-m*(X-x1)>0;
octave:44> 
octave:44> % Combine above
octave:44> A = FS .* LSH;
error: 'LSH' undefined near line 2 column 11
octave:44> Sx = 1;
octave:45> Sy = 1;
octave:46> Nx = 20;
octave:47> Ny = 20;
octave:48> 
octave:48> dx = Sx/Nx;
octave:49> xa = [0:Nx-1]*dx;
octave:50> xa = xa-mean(xa);
octave:51> 
octave:51> dy = Sy/Ny;
octave:52> ya = [0:Ny-1]*dy;
octave:53> ya = ya-mean(ya);
octave:54> 
octave:54> [Y, X] = meshgrid(ya, xa);
octave:55> 
octave:55> y = -0.2+0.1*cos(4*pi*xa/Sx);
octave:56> FS = zeros(Nx, Ny);
octave:57> dy = Sy/Ny;
octave:58> for nx = 1: Nx
>   ny = round((y(nx)+Sy/2)/dy);
>   FS(nx, ny:Ny)=1;
> end
octave:59> 
octave:59> x1 = -0.5;
octave:60> y1 = +0.5;
octave:61> x2 = +0.5;
octave:62> y2 = -0.5;
octave:63> m = (y2-y1)/(x2-x1);
octave:64> LHS = (Y-y1)-m*(X-x1)>0;
octave:65> 
octave:65> % Combine above
octave:65> A = FS .* LHS;
octave:66> A
A =

 Columns 1 through 17:

   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1
   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1
   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1
   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1
   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1

 Columns 18 through 20:

   0   0   1
   0   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1
   1   1   1

octave:67> A
A =

   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1
   0   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1
   0   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1   1
   0   0   0   0   0   0   0   1   1   1   1   1   1   1   1   1   1   1   1   1

octave:68> 

