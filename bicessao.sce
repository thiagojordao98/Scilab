function [y] = f(x)
    y = x^2+log(x)
endfunction
 
function [x,it] = bissec(a, b, p, N)
    it = 0;
    erro = 1;
    x = a;
    while erro > p & it < N
        xa = x;
        x = (a + b)/2;
        if (f(x)*f(a)) < 0
            b = x;
        else
            a = x;
        end
        it = it+1
        erro = abs(x-xa)/abs(x) 
     end
endfunction
a = 0.1
b = 1
p = 10^(-4)
N = 100  
[x,it] = bissec(a, b, p, N)      
