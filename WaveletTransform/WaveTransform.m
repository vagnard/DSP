function WT = WaveTransform(u, h, g, scale)
    WT.LoRes = u;
    WT.Details = cell(scale, 1);
    
    for i = 1:scale
       WT.Details{i} = subsample(myconv(WT.LoRes, h));
       WT.LoRes = subsample(myconv(WT.LoRes, g));
    end

end

