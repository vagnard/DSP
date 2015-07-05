clear all;
load Daub4.mat
load PieceRegSig.mat

a0.sig = sig;
a0.d = 0;

g.sig = g; h.sig = h; rh.sig = rh; rg.sig = rg;
g.d = 0; h.d = 0; rh.d = 3; rg.d = 3;

NumEl = round(length(sig)/2);
scale = 6;

WT = WaveTransform(a0, h, g, scale);
thr = thresholdValue(WT, NumEl);
WT = threshold(WT, thr);
v = InvWaveTransform(WT, rh, rg, scale);
l = length(sig);
w = v.sig(v.d+1:v.d+l);

figure(1);
hold on;
plot(sig, 'b');
plot(w, 'r');
hold off;
figure(2);plot(w-sig);