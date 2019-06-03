n=0:1:15;
x1=cos(n*pi/4); %x1实偶函数，共轭对称序列满足实部偶函数，虚部奇函数
x2=sin(n*pi/8); %x2实奇函数，共轭反对称序列满足实部奇函数，虚部偶函数
x=x1+x2;
X=fft(x,16);
XR=real(X);%取DFT序列的实部，对应原序列的共轭对称序列的DFT
XI=1i*imag(X);%取DFT序列的虚部乘以j，对应原序列的共轭反对称序列的DFT
X1=fft(x1,16);%对x1做DFT变换
X2=fft(x2,16);%对x2做DFT变换
subplot(231);%画图比较x1、x2的DFT变换与和序列的DFT实部和虚部（含j）以及其逆变换，可以观察逆变换恢复出原信号
stem(n,X1);
title('cos(n*pi/4)的DFT');
subplot(232);
stem(n,XR);
title('X的实部X1');
subplot(233);
stem(n,ifft(XR));
title('X1的IDFT');
subplot(234);
stem(n,abs(X2));
title('sin(n*pi/8)的DFT');
subplot(235);
stem(n,abs(XI));
title('X的虚部X2');
subplot(236);
stem(n,ifft(XI));
title('X2的IDFT');