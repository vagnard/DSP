function y = subsample(x)
    y.sig = x.sig(1:2:end);
    y.d = (length(y.sig) - 1) / 2;
end

