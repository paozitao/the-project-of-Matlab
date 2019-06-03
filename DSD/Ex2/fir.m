n=0:1:15;
x1=cos(n*pi/4); %x1ʵż����������Գ���������ʵ��ż�������鲿�溯��
x2=sin(n*pi/8); %x2ʵ�溯��������Գ���������ʵ���溯�����鲿ż����
x=x1+x2;
X=fft(x,16);
XR=real(X);%ȡDFT���е�ʵ������Ӧԭ���еĹ���Գ����е�DFT
XI=1i*imag(X);%ȡDFT���е��鲿����j����Ӧԭ���еĹ���Գ����е�DFT
X1=fft(x1,16);%��x1��DFT�任
X2=fft(x2,16);%��x2��DFT�任
subplot(231);%��ͼ�Ƚ�x1��x2��DFT�任������е�DFTʵ�����鲿����j���Լ�����任�����Թ۲���任�ָ���ԭ�ź�
stem(n,X1);
title('cos(n*pi/4)��DFT');
subplot(232);
stem(n,XR);
title('X��ʵ��X1');
subplot(233);
stem(n,ifft(XR));
title('X1��IDFT');
subplot(234);
stem(n,abs(X2));
title('sin(n*pi/8)��DFT');
subplot(235);
stem(n,abs(XI));
title('X���鲿X2');
subplot(236);
stem(n,ifft(XI));
title('X2��IDFT');