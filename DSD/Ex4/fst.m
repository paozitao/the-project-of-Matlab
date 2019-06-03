T=0.01;
N=64;
Fs=64;
% t=0:0.001:1;
% x=sin(2*pi*5*t)+0.5*cos(2*pi*30*t);
% plot(t,x);
% title('signal in the time domain');
% hold on;

t=0:1/Fs:(N-1)/Fs;
x=sin(2*pi*5*t)+0.5*cos(2*pi*30*t);
Xk=fft(x,N);
% k=0:N-1; 
% wk=2*pi/N*k;   %k对应的数字频率
% stem(wk/pi,abs(Xk)/max(abs(Xk))); %归一化幅度谱
% plot(t,x);
% hold on;

wp=0.2;
ws=0.3;
Wp=2*Fs*tan(1/2*wp*pi);%边界频率转换，数字：w=0.2*pi=>模拟：W=0.2*pi/2*pi*Fs,经过正切变化压缩
Ws=2*Fs*tan(1/2*ws*pi);
Rp=1;
Rs=15;
[n,wc]=buttord(Wp,Ws,Rp,Rs,'s');%模拟滤波器阶数n和3dB截止频率wc
[B,A] =butter(n,wc,'s');%模拟滤波器系统函数 系数的确定
[Bz,Az]=bilinear(B,A,Fs); %用双线性变换法设计转换成数字滤波器
[H,w]=freqz(Bz,Az,n);
% plot(w/pi,20*log10(abs(H)/max(abs(H)))); % DF损耗函数的绘制
% axis([0 1 -120 10]);
% title('低通数字滤波器损耗函数');
% xlabel('w/pi');
% ylabel('幅度/dB');
y=filter(Bz,Az,x);
plot(t,y);
title('xt滤波后波形图');
xlabel('t');
ylabel('yt');