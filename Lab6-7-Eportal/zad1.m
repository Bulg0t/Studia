clear all;
close all;
load("s1.mat");
load("s2.mat");
fp = 2e3;
N = length(s1);
t = (0:N-1)/fp; %krótszy sposób generowania wektora czasu
figure(1)
subplot(221)
plot(t,s1)
xlabel('czas[s]')
ylabel('s1(t)')
subplot(222)
plot(t,s2)
xlabel('czas[s]')
ylabel('s2(t)')

%% Generowanie widma sygnału 1
Nf = N; %celowo tak ustawione, później bdmy zmieniac
f = linspace(0,fp,Nf);
w1 = abs(fft(s1, Nf));
subplot(223)
stem(f, w1) %zamiast plot użyjemy stem - wyrysowuje każdą próbkę osobno na prążku
xlabel('częstotliwość [Hz]')
ylabel('moduł widma')
w2 = abs(fft(s2, Nf));
subplot(224)
stem(f, w2)
xlabel('częstotliwość [Hz]')
ylabel('moduł widma')