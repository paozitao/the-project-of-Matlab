n=1:16;
XK_in=[1+1i,-3-1i,-3+3*1i,-1-3*1i];
Xk=[0,XK_in,zeros(1,7),conj(fliplr(XK_in))];
% subplot(211)
% stem(n-1,real(Xk));
% title('Xk��ʵ��');
% subplot(212)
% stem(n-1,imag(Xk));
% title('Xk���鲿');
xn=ifft(Xk);
subplot(211)
stem(n-1,real(xn));
title('xn��ʵ��');
subplot(212)
stem(n-1,imag(xn));
title('xn���鲿');