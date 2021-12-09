function [h] = alt(t)
    H = [446 485 441]
    ti = [0.0970 0.263 0.598]
    h = H(1) + ((H(2)-H(1))/(ti(2)-ti(1)))*(t-ti(1)) + ((H(3)-H(2))/(ti(3)-ti(2)) - ((H(2)-H(1))/(ti(2)-ti(1))))/(ti(3)-ti(1)).*((t-ti(1)).*(t-ti(2)))
    
endfunction
h1 = alt(1)
disp(h1)
t = 0.0970:0.001:1.0;
h = alt(t);
plot(t,h);
xgrid