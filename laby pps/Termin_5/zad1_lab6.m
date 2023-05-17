clear all;
close all;

%% generowanie chirpa
N = 2000;
fp = 3000;
t = 0:1/fp:(N-1)/fp;
x = chirp(t, 200, (N-1)/fp, 900, 'q');
figure(1)
subplot(211)
plot(t,x)
xlabel('czas[s]')
ylabel('x(t)')

%% generowanie widma chirpa

Nf = 2^nextpow2(N);
N21 = Nf/2 +1;
fx = linspace(0,fp/2,N21)
wx = abs(fft(x,Nf))
figure(1)
subplot(212)
plot(fx,wx(1:N21))
xlabel('czestosliwosc[Hz]')
ylabel('Modul widma')

%% spektrogram 
figure(2)
spectrogram(x,512,256,512,fp);