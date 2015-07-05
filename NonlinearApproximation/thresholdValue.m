function t = thresholdValue(WT,numEl)
    len = size(WT.Details, 1);
    buf = [];
    for i = 1:len
        buf = [buf WT.Details{i}.sig];
    end
    buf = abs(buf);
    buf = sort(buf, 'descend');
    if numEl > size(buf, 2)
        numEl = size(buf, 2);
    end
    
    t = buf(numEl);
end

