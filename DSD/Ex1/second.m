R4=[1,1,1,1];
x32=[R4,0*(1:28)];
w=0:0.01*pi:2*pi;
X4=dtft(R4,w);
X32=dtft(x32,w);
subplot(1,2,1)
plot(w/pi,abs(X4));
title('R4µÄDTFTÍ¼Ïñ');
hold on
subplot(1,2,2)
plot(w/pi,abs(X32));
title('²¹ÆëºóµÄDTFTÍ¼Ïñ');