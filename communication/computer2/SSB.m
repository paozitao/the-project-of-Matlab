clear,clc,close all;
f0=1;
f1=10;
Fs=100;
T=10;
t=0:1/Fs:10;
st=sqrt(2)*cos(f0*2*pi*t);
gt=cos(f1*2*pi*t);
gtx=sin(f1*2*pi*t);
fdsb=st.*gt;
fssb=0.5*st.*gt-0.5*imag(hilbert(st)).*gtx;%希尔伯特变换hilbert（）取虚部
dw=0.01*pi;
w=0:dw:2*pi*15;
pdsb=sig_spec_w(fdsb,t,1/Fs,w);
P=sig_spec_w(fssb,t,1/Fs,w);
subplot(311)
plot(t,fssb);
title('SSB信号');
subplot(312)
plot(w/(2*pi),pdsb);
title('DSB频谱密度函数');
subplot(313)
plot(w/(2*pi),P);
title('SSB频谱密度函数');
% axis([-1 13 -0.5 2])