clear,clc,close all;
f0=1;
f1=10;
Fs=100;
T=10;
t=0:1/Fs:10;
st=sqrt(2)*cos(f0*2*pi*t);
gt=cos(f1*2*pi*t);
fam=(st+2).*gt;
dw=0.01*pi;
w=0:dw:2*pi*15;
P=sig_spec_w(fam,t,1/Fs,w);
subplot(211)
plot(t,fam);
hold on;
plot(t,abs(hilbert(fam)));
hold on;
plot(t,zeros(length(t)));
hold on;
plot(t,-abs(hilbert(fam)));
title('AM信号');
subplot(212)
plot(w/(2*pi),P);
title('AM信号频谱密度函数');