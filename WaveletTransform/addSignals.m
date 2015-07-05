function y = addSignals(a, b)
    if a.d < b.d
        a.sig = [zeros(1, b.d - a.d) a.sig];
    else 
        b.sig = [zeros(1, a.d - b.d) b.sig];
    end    
    n = length(a.sig);
    m = length(b.sig);
    
    if n < m
        a.sig = [a.sig zeros(1, m - n)];
    else
        b.sig = [b.sig zeros(1, n - m)];
    end
        
    y.sig = a.sig + b.sig;
    y.d = max(a.d, b.d);


end

