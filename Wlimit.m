function [Vpp_out]=Wlimit(Vpp_in,R,limit)
    dB_in = Vpp2dB(Vpp_in,R);
    Vpp_out = dB2Vpp(dB_in,R,limit);
end

function [Vpp]=dB2Vpp(dB,R,limit)
Vpp = sqrt(R*10^((dB-limit)/20))*2*sqrt(2);
end

function [dB]=Vpp2dB(Vpp,R)
dB = 20*log10((Vpp/(2*sqrt(2)))^2/R);
end