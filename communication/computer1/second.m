
% 此文件功能与third相同，但third只需更改Ts即可，还需要产生随机数组an的方法
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
title('输入信号')
grid on
axis([0 10 -0.5 1.5])
subplot(223)
plot(t,ot)
title('输出信号')
grid on
axis([0 10 -0.5 1.5])
subplot(222)
plot(w,swi)
title('输入信号幅度谱')
axis([-10 10 -5 10]);
grid on
subplot(224)
plot(w,swo)
title('输出信号幅度谱')
axis([-10 10 -5 10]);
grid on
