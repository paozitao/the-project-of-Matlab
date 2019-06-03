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
subplot(311)
plot(an)
% axis([0,30,-1.5,1.5])
title('»ù´øÐÅºÅ')
grid on
ht=sinc((t+eps)/Ts);
an2=[an(Fs+1:length(an)),zeros(1,Fs)];
st=an+an2;
% st=an;
gt=conv(st,ht)/Fs;
subplot(312)
tt=-5*Ts:dt:(5+N)-dt;
plot(tt,gt);
% axis([0,30,-1.5,1.5])
subplot(313)
title('ÑÛÍ¼')
for n=15:50
    plot(gt((n*Fs+1):(n+9)*Fs))
    hold on;
end
