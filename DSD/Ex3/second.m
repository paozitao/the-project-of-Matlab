Fs=64;%采样频率
N1=16;%采样16点0.25s
N2=32;%采样32点0.5s
N3=64;%采样64点1s
N4=128;%采样128点2s
N5=256;%采样256点4s
% t=0:1/Fs:(16-1)/Fs;%时间序列
% x1=cos(8*pi*t)+cos(16*pi*t)+cos(20*pi*t);%和信号序列

%各采样时间序列
t1=0:1/Fs:(N1-1)/Fs;
t2=0:1/Fs:(N2-1)/Fs;
t3=0:1/Fs:(N3-1)/Fs;
t4=0:1/Fs:(N4-1)/Fs;
t5=0:1/Fs:(N5-1)/Fs;

%各信号函数
x1=cos(8*pi*t1)+cos(16*pi*t1)+cos(20*pi*t1);
x2=cos(8*pi*t2)+cos(16*pi*t2)+cos(20*pi*t2);
x3=cos(8*pi*t3)+cos(16*pi*t3)+cos(20*pi*t3);
x4=cos(8*pi*t4)+cos(16*pi*t4)+cos(20*pi*t4);
x5=cos(8*pi*t5)+cos(16*pi*t5)+cos(20*pi*t5);

%各个信号FFT
X1=fft(x1,N1);
% X11=fft(x1,N3)/N3;
X2=fft(x2,N2)/fs;
X3=fft(x3,N3);
X4=fft(x4,N4);
X5=fft(x5,N5);

% stem(Fs.*t1*4,abs(X1)/max(abs(X1)));
% hold on; 
%观察t1补零后并没有提高频率分辨率
% stem(Fs.*t3*1,abs(X11)/max(abs(X11)));

%取信号的功率密度函数
PSD1=X1.*conj(X1)/N1;
PSD2=X2.*conj(X2)/N2;
PSD3=X3.*conj(X3)/N3;
PSD4=X4.*conj(X4)/N4;
PSD5=X5.*conj(X5)/N5;

%观察增加N是否能增加信号分辨率
subplot(311)
plot(Fs.*t3,PSD3);
title('N=64、F=1、F=1');
xlabel('频率Hz')
axis([ 0 64 0 20])
subplot(312)
plot(Fs.*t4*0.5,PSD4);
title('N=128、Tp=2s、F=0.5');
xlabel('频率Hz')
axis([ 0 64 0 40])
subplot(313)
plot(t5*Fs*0.25,PSD5);
title('N=256、Tp=4s、F=0.25');
xlabel('频率Hz')
axis([ 0 64 0 60])

%观察不同采样时间的PSD
% subplot(311)
% plot(Fs.*t1*4,PSD1);
% title('N=16、Tp=0.25s、F=4');
% xlabel('频率Hz')
% axis([ 0 64 0 20])
% subplot(312)
% plot(Fs.*t2*2,PSD2);
% title('N=32、Tp=0.5s、F=2');
% xlabel('频率Hz')
% axis([ 0 64 0 20])
% subplot(313)
% plot(t3*Fs*1,PSD3);
% title('N=16、Tp=1s、F=1');
% xlabel('频率Hz')
% axis([ 0 64 0 20])

%观察不同采样时间的DFT
% subplot(311)
% stem(Fs.*t1*4,abs(X1)/max(abs(X1)));
% title('N=16、Tp=0.25s、F=4');
% xlabel('频率Hz')
% axis([ 0 64 0 1])
% subplot(312)
% stem(t2*Fs*2,abs(X2)/max(abs(X2)));
% title('N=32、Tp=0.5s、F=2');
% xlabel('频率Hz')
% axis([ 0 64 0 1])
% subplot(313)
% stem(t3*Fs*1,abs(X3)/max(abs(X3)));
% title('N=16、Tp=1s、F=1');
% xlabel('频率Hz')
% axis([ 0 64 0 1])

