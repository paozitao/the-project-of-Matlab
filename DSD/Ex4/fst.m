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
% wk=2*pi/N*k;   %k��Ӧ������Ƶ��
% stem(wk/pi,abs(Xk)/max(abs(Xk))); %��һ��������
% plot(t,x);
% hold on;

wp=0.2;
ws=0.3;
Wp=2*Fs*tan(1/2*wp*pi);%�߽�Ƶ��ת�������֣�w=0.2*pi=>ģ�⣺W=0.2*pi/2*pi*Fs,�������б仯ѹ��
Ws=2*Fs*tan(1/2*ws*pi);
Rp=1;
Rs=15;
[n,wc]=buttord(Wp,Ws,Rp,Rs,'s');%ģ���˲�������n��3dB��ֹƵ��wc
[B,A] =butter(n,wc,'s');%ģ���˲���ϵͳ���� ϵ����ȷ��
[Bz,Az]=bilinear(B,A,Fs); %��˫���Ա任�����ת���������˲���
[H,w]=freqz(Bz,Az,n);
% plot(w/pi,20*log10(abs(H)/max(abs(H)))); % DF��ĺ����Ļ���
% axis([0 1 -120 10]);
% title('��ͨ�����˲�����ĺ���');
% xlabel('w/pi');
% ylabel('����/dB');
y=filter(Bz,Az,x);
plot(t,y);
title('xt�˲�����ͼ');
xlabel('t');
ylabel('yt');