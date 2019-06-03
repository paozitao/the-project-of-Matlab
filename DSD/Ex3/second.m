Fs=64;%����Ƶ��
N1=16;%����16��0.25s
N2=32;%����32��0.5s
N3=64;%����64��1s
N4=128;%����128��2s
N5=256;%����256��4s
% t=0:1/Fs:(16-1)/Fs;%ʱ������
% x1=cos(8*pi*t)+cos(16*pi*t)+cos(20*pi*t);%���ź�����

%������ʱ������
t1=0:1/Fs:(N1-1)/Fs;
t2=0:1/Fs:(N2-1)/Fs;
t3=0:1/Fs:(N3-1)/Fs;
t4=0:1/Fs:(N4-1)/Fs;
t5=0:1/Fs:(N5-1)/Fs;

%���źź���
x1=cos(8*pi*t1)+cos(16*pi*t1)+cos(20*pi*t1);
x2=cos(8*pi*t2)+cos(16*pi*t2)+cos(20*pi*t2);
x3=cos(8*pi*t3)+cos(16*pi*t3)+cos(20*pi*t3);
x4=cos(8*pi*t4)+cos(16*pi*t4)+cos(20*pi*t4);
x5=cos(8*pi*t5)+cos(16*pi*t5)+cos(20*pi*t5);

%�����ź�FFT
X1=fft(x1,N1);
% X11=fft(x1,N3)/N3;
X2=fft(x2,N2)/fs;
X3=fft(x3,N3);
X4=fft(x4,N4);
X5=fft(x5,N5);

% stem(Fs.*t1*4,abs(X1)/max(abs(X1)));
% hold on; 
%�۲�t1�����û�����Ƶ�ʷֱ���
% stem(Fs.*t3*1,abs(X11)/max(abs(X11)));

%ȡ�źŵĹ����ܶȺ���
PSD1=X1.*conj(X1)/N1;
PSD2=X2.*conj(X2)/N2;
PSD3=X3.*conj(X3)/N3;
PSD4=X4.*conj(X4)/N4;
PSD5=X5.*conj(X5)/N5;

%�۲�����N�Ƿ��������źŷֱ���
subplot(311)
plot(Fs.*t3,PSD3);
title('N=64��F=1��F=1');
xlabel('Ƶ��Hz')
axis([ 0 64 0 20])
subplot(312)
plot(Fs.*t4*0.5,PSD4);
title('N=128��Tp=2s��F=0.5');
xlabel('Ƶ��Hz')
axis([ 0 64 0 40])
subplot(313)
plot(t5*Fs*0.25,PSD5);
title('N=256��Tp=4s��F=0.25');
xlabel('Ƶ��Hz')
axis([ 0 64 0 60])

%�۲첻ͬ����ʱ���PSD
% subplot(311)
% plot(Fs.*t1*4,PSD1);
% title('N=16��Tp=0.25s��F=4');
% xlabel('Ƶ��Hz')
% axis([ 0 64 0 20])
% subplot(312)
% plot(Fs.*t2*2,PSD2);
% title('N=32��Tp=0.5s��F=2');
% xlabel('Ƶ��Hz')
% axis([ 0 64 0 20])
% subplot(313)
% plot(t3*Fs*1,PSD3);
% title('N=16��Tp=1s��F=1');
% xlabel('Ƶ��Hz')
% axis([ 0 64 0 20])

%�۲첻ͬ����ʱ���DFT
% subplot(311)
% stem(Fs.*t1*4,abs(X1)/max(abs(X1)));
% title('N=16��Tp=0.25s��F=4');
% xlabel('Ƶ��Hz')
% axis([ 0 64 0 1])
% subplot(312)
% stem(t2*Fs*2,abs(X2)/max(abs(X2)));
% title('N=32��Tp=0.5s��F=2');
% xlabel('Ƶ��Hz')
% axis([ 0 64 0 1])
% subplot(313)
% stem(t3*Fs*1,abs(X3)/max(abs(X3)));
% title('N=16��Tp=1s��F=1');
% xlabel('Ƶ��Hz')
% axis([ 0 64 0 1])

