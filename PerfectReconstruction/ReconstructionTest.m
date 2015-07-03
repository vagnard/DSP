clear all;
load Daub4.mat
load PieceRegSig.mat

a0.sig = sig;
a0.d = 0;

g.sig = g; h.sig = h; rh.sig = rh; rg.sig = rg;
g.d = 0; h.d = 0; rh.d = 3; rg.d = 3;

a1 = zeroinsert(subsample(myconv(a0, h)));
d1 = zeroinsert(subsample(myconv(a0, g)));

newa0 = addSignals(myconv(a1, rh), myconv(d1, rg));

figure(1);
plot(newa0.sig);