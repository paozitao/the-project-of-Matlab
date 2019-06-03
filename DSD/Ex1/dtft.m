function [ Xejw ] = dtft(xn,w)
%DTFT 此处显示有关此函数的摘要
%   此处显示详细说明
for j = 1:length(w)
    Xejw(j)=0;
    for i = 1:length(xn) 
        Xejw(j)=Xejw(j)+xn(i)*exp(-w(j)*i*1i);
    end
end
