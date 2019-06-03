clc,clear;
R4=[1,1,1,1];
w=0:0.01*pi:6*pi;
Xejw= dtft(R4,w);
plot(w/pi,abs(Xejw));