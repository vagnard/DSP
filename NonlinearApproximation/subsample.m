function y = subsample(x)
if mod(x.d, 2) == 0
    y.sig = x.sig(1:2:end);
    y.d = x.d / 2;
else
    y.sig = x.sig(2:2:end);
    y.d = (x.d - 1) / 2;
end

end

