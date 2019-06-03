clear,clc,close all;
an=[0,1,1,0,1,1,0,1,0,1];
Ts=8;
r=length(an)*Ts;
sample=10;
dt=1/sample;
t=0.1:dt:r;
for i=1:length(an)
    for j=1:r
        st((i-1)*r+j)=an(i);
    end
    j=1;
end
dw=0.01*pi;
w=-2*10*pi:dw:2*10*pi;
swi=sig_spec_w(st,t,0.01,w);
ot=st*0.5+0.707*[zeros(1,sample),st(1:(length(st)-sample))]+0.5*[zeros(1,2*sample),st(1:(length(st)-2*sample))];
swo=sig_spec_w(ot,t,0.01,w);
subplot(221)
plot(t,st)
title('输入信号')
grid on
axis([0 100 -0.5 2])
subplot(223)
plot(t,ot)
title('输出信号')
grid on
axis([0 100 -0.5 2])
subplot(222)
plot(w,swi)
title('输入信号幅度谱')
axis([-70 70 -4 10]);
grid on
subplot(224)
plot(w,swo)
title('输出信号幅度谱')
axis([-70 70 -4 10]);
grid on
