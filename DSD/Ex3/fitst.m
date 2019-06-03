x=[0.5,1,1,0.5];
xk=fft(x,8);
X=xk.*xk;
xo=ifft(X);
n=0:7;
stem(n,xo);
axis([0 8 0 3]);