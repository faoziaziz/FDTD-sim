% grid
xa1 = linspace(-1,1,21);
xa2 = linspace(-1,1, 250);

% function 
f1 = exp(-xa1.^2/0.2^2);

% Interpolate
f2 = interp1(xa1, f1, xa2);
plot(xa2, f2, '.b'); 
hold on;
plot(xa1, f1, 'o-r');
hold off;