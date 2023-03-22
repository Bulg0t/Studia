clear all;
close all;
load('szum_1');
load('szum_2');
fp = 250;
N = length(szum_1);
t = 0: 1/fp: (N-1)/fp;

%figure(2)
subplot(221)
plot(t,szum_1)
xlabel('Czas[s]')
subplot(222)
plot(t,szum_2)
xlabel('Czas[s]')
subplot(223)

nbins_1 = 20;
nbins_2 = 10;

subplot(223)
histogram(szum_1, nbins_1)
subplot(224)
histogram(szum_2, nbins_2)

figure(1)
subplot(211)
N1=2000;
fp1=2000;
fsin=8;
t = 0: 1/fp1 : (N1-1)/fp1;
x = sin(2*pi*fsin*t);
%histogram(x, 30)
plot(t,x)
kmax = 1000;
subplot(212)
tau = -kmax/fp1: 1/fp1: kmax/fp1;
rxx = xcorr(x,x,kmax, 'coeff');
plot(tau,rxx)
xlabel('opóźnienie [s]')
ylabel('Rxx(k)')

