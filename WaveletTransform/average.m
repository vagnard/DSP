h.sig = [0.5 0.5];
h.d = 0;
figure(1);
plot(A.sig);

n = 8;

loopsig = A;
looph = h;
for i = 1:n
    figure(i + 1);
    loopsig = myconv(loopsig, looph);
    plot(loopsig.sig);
    looph = zeroinsert(looph);
end
