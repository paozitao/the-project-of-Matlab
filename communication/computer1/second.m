
% ���ļ�������third��ͬ����thirdֻ�����Ts���ɣ�����Ҫ�����������an�ķ���
Ts=1;
r=10;
an=[0,1,1,0,1,1,0,1,0,1];
t=0.01:0.01:10;
for i=1:r
    for j=1:100
        st((i-1)*100+j)=an(i);
    end
    j=1;
end
dw=0.01*pi;
w=-2*10*pi:dw:2*10*pi;
swi=sig_spec_w(st,t,0.01,w);
ot=st*0.5+0.707*[zeros(1,100),st(1:(length(st)-100))]+0.5*[zeros(1,200),st(1:(length(st)-200))];
swo=sig_spec_w(ot,t,0.01,w);
subplot(221)
plot(t,st)
title('�����ź�')
grid on
axis([0 10 -0.5 1.5])
subplot(223)
plot(t,ot)
title('����ź�')
grid on
axis([0 10 -0.5 1.5])
subplot(222)
plot(w,swi)
title('�����źŷ�����')
axis([-10 10 -5 10]);
grid on
subplot(224)
plot(w,swo)
title('����źŷ�����')
axis([-10 10 -5 10]);
grid on
