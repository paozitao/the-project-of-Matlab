function [ Xk ] = dft( xn,N )
%DFT �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if length(xn)<N
    for k=length(xn):N
        xn(k+1)=0;
    end
end

for i = 1:N
    Xk(i)=0;
    for j = 1:N
        Xk(i)=Xk(i)+xn(j)*exp(-2*pi/N*(i-1)*(j-1)*1i);
    end
end

