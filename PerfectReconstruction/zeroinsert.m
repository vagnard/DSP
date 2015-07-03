function y = zeroinsert(x)
    [n, m] = size(x.sig);
    if n == 1
        y.sig = zeros(1, 2 * m - 1);
    else
        y.sig = zeros(2 * n - 1, 1);
    end
    y.sig(1:2:end) = x.sig;
    y.d = 2*x.d;
end

