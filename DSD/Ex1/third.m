R4=[1,1,1,1];
w=0:0.01*pi:2*pi;
X4=dtft(R4,w);
Xk4=dft(R4,4);
Xk32=dft(R4,32);
subplot(311)
plot(w/pi,abs(X4));
title('R4的DTFT图像');
hold on
subplot(313)
N1=0:3;
stem(N1,abs(Xk4));
axis([-0.1 3.1 -0.5 5]);
title('R4的4点DFT图像');
hold on
subplot(312)
N2=0:31;
stem(N2,abs(Xk32));
axis([-0.5 31.5 -0.5 5]);
title('R4的32点DTFT图像');
