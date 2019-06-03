clear,clc,close all;
f0=1;
f1=10;
Fs=100;
T=10;
t=0:1/Fs:10;
db=10*log10(1+10);
st=sqrt(2)*cos(f0*2*pi*t);
gt=cos(f1*2*pi*t);
fdsb=st.*gt;
f=fdsb+awgn(fdsb,db);
dw=0.01*pi;
w=0:dw:2*pi*15;
P=sig_spec_w(f,t,1/Fs,w);
r=f.*gt;
filter=5*pi*sinc(2*pi*t);
Pf=sig_spec_w(r,t,1/Fs,w);
plot(w,Pf);
out=conv(r,filter)/Fs;
t2=0:1/Fs:20;
plot(t2,out);
hold on
plot(t,st);
title('�����DSB����źź�ԭ�ź�');
legend('�������ź�','ԭ�ź�');
axis([0 10 -3 3])

