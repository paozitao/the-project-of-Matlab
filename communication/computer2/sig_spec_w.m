function [ sw ] = sig_spec_w( ft,t,dt,w )
len = length(t);
    for i=1:1:length(w)
        sum(i)=0;
        for m=1:1:len
            sum(i)=sum(i)+exp(-1j*w(i)*t(m))*ft(m)*dt;
        end
    end
    sw=sum;
end



