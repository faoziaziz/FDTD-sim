octave:13> diary on
octave:14> x1 = -0.50;
octave:15> y1 = +0.25;
octave:16> x2 = +0.50;
octave:17> y2 = -0.25;
octave:18> m = (y2-y1)/(x2-x1);
octave:19> A = (Y - y1) -m*(X-x1)>0;
octave:20> A
A =

  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1
  0  0  0  0  0  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1

octave:21> diary off