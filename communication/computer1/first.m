clear,clc,close all;
f=5;
w=-1:0.01:1;
ft1=0.5*exp(-1j*2*pi*w*0);
ft2=0.707*exp(-1j*2*pi*w*1);
ft3=0.5*exp(-1j*2*pi*w*2);
ft=ft1+ft2+ft3;
subplot(211);
plot(w,abs(ft));
title('�ŵ��ķ�Ƶ��Ӧ����')
grid on
subplot(212);
plot(w,angle(ft));
title('�ŵ�����Ƶ����')
grid on
