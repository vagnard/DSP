function y = myconv(x, f)
    y.d = x.d + f.d;
    y.sig = conv(x.sig, f.sig);
end

