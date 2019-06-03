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
P=sig_spec_w(fdsb,t,1/Fs,w);
r=fdsb.*gt;
filter=5*pi*sinc(2*pi*t);
Pf=sig_spec_w(r,t,1/Fs,w);
plot(w,Pf);
out=conv(r,filter)/Fs;
t2=0:1/Fs:20;
plot(t2,out);
hold on
plot(t,st);
axis([0 10 -3 3])
% subplot(211)
% plot(t,fdsb);
% title('DSBÐÅºÅ');
% subplot(212)
% plot(w/(2*pi),P);
% title('DSBÆµÆ×ÃÜ¶Èº¯Êý');
% axis([-1 13 -0.5 2])
