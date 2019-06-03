clc,clear all
N=150;
Ts=1;
Fs=16;
random=rand(1,N);
dt=1/Fs;
t=-5*Ts:dt:5*Ts;
for n=1:N
    if(random(n)>0.5)
        for j=1:Fs
            an((n-1)*Fs+j)=1;
        end
    else
        for j=1:Fs
            an((n-1)*Fs+j)=-1;
        end
    end
end
subplot(221)
plot(an)
% axis([0,30,-1.5,1.5])
title('�����ź�')
grid on
ht2=sinc((t+eps)/Ts)./(1-(t+eps)./Ts);
ht=sinc((t+eps)/Ts);
% ht(6*Fs+1)=1;
st=conv(an,ht)/Fs;
st2=conv(an,ht2)/Fs;
tt=-5*Ts:dt:(5+N)-dt;
subplot(222)
plot(tt,st);
title('����ź�')
% axis([0,30,-1.5,1.5])
subplot(223)

for n=15:50
    plot(st((n*Fs+1):(n+9)*Fs))
    hold on;
end
title('������Ӧ��ͼ')
subplot(224)
for n=15:50
    plot(st2((n*Fs+1):(n+9)*Fs))
    hold on;
end
title('��һ�ಿ����Ӧ��ͼ')
