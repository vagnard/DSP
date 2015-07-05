function s = InvWaveTransform(WT,rh,rg,scale)
    s = WT.LoRes;
    for i = scale:-1:1
        s = myconv(zeroinsert(s), rg);
        t = myconv(zeroinsert(WT.Details{i}), rh);
        s = addSignals(s, t);
    end

end

