octave:27> diary on
octave:28> Sx = 1;
octave:29> Sy = 1;
octave:30> Nx = 21;
octave:31> Ny = 21;
octave:32> 
octave:32> % Grid array
octave:32> dx = Sx/Nx;
octave:33> xa = [0:Nx-1]*dx;
octave:34> xa = xa -mean(xa);
octave:35> dy = Sy/Ny;
octave:36> ya = [0: Ny-1]*dy;
octave:37> ya = ya -mean(ya);
octave:38> [Y, X]= meshgrid(ya, xa);
octave:39> 
octave:39> ER =abs(X)<=0.075| abs(Y)<-0.075;
octave:40> 
octave:40> B = exp(-(X.^2+Y.^2)/0.1^2);
octave:41> 
octave:41> ER = fft2(ER).*fft2(B)/sum(B(:));
octave:42> ER = ifftshift(real(ifft2(ER)));
octave:43> 
octave:43> ER= ER> 0.4;
octave:44> diary off
