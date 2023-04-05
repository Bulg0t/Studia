clear all;
close all;
N = 1000;
fp = 2000;
t = (0:N-1)/fp;
x = sin(2*pi*250*t);
%%%%%%
Nf = N;
N21 = Nf/2 + 1;
f = linspace(0,fp/2, N21);
wx = abs(fft(x,Nf));


figure(1)
subplot(211)
plot(t,x); xlabel('czas[s]'); ylabel('x(t)')
subplot(212)
stem(f,wx(1:N21)); xlabel('czestotliwosc [Hz]'); ylabel('moduł widma')
