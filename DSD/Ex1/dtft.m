function [ Xejw ] = dtft(xn,w)
%DTFT �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
for j = 1:length(w)
    Xejw(j)=0;
    for i = 1:length(xn) 
        Xejw(j)=Xejw(j)+xn(i)*exp(-w(j)*i*1i);
    end
end
