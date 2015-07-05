function WT = threshold(WT,t)
    len = size(WT.Details, 1);
    for i = 1:len
        det = WT.Details{i}.sig;
        absdet = abs(det);
        I = find(absdet >= t);
        newdet = zeros(size(det));
        newdet(I)=det(I);
        WT.Details{i}.sig = newdet;
    end
end

