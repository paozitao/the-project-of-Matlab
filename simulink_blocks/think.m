clc,clear;
% t=0:0.0005:1/10;
Fs=4096;
N=2048;

fm1=30;
fm2=60;
fm3=120;
fc1=300;
fc2=600;
fc3=1200;
% xt=cos(2*fm1*pi*t).*cos(2*pi*fc1*t)+cos(2*fm2*pi*t).*cos(2*pi*fc2*t)+cos(2*fm3*pi*t).*cos(2*pi*fc3*t);
% plot(t,xt);
% title('st在0.1s内的时域波形图');
% xlabel('t');
% ylabel('st');
t=0:1/Fs:(N-1)/Fs;
st1=cos(2*fm1*pi*t).*cos(2*pi*fc1*t);
st2=cos(2*fm2*pi*t).*cos(2*pi*fc2*t);
st3=cos(2*fm3*pi*t).*cos(2*pi*fc3*t);
st=st1+st2+st3;
Xk=fft(st,N);%fft得到频谱图
k=0:N-1;
w=k/N*Fs;
stem(w,abs(Xk)/max(abs(Xk)));
title(['N=' num2str(N)  '时，st的幅频特性曲线（归一化）']);
xlabel('f/Hz');
ylabel('Xk');