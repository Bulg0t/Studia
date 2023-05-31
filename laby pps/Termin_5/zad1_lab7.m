clear all; close all;
N = 3000;
fp = 2000;
t = (0:N-1)/fp;
x = chirp(t, 200, (N-1)/fp, 800);

Nf = 2^nextpow2(N);
N21 = (Nf/2) +1;
f = linspace(0,fp/2,N21);
wx = abs(fft(x,Nf));
figure(1)
subplot(321)
plot(t,x);
xlabel('czas[s]'); ylabel('x(t)');
subplot(322)
plot(f,wx(1:N21));
xlabel('czestotliwosc[Hz]'); ylabel('widmo sygnalu');

%  projekt filtru

M = 31; %liczba współczynników (długość filtru, zawsze bd podana w zad)
fg = [400, 600];
fgu = fg / (fp/2); % fp/2 - czestotliwosc nyquista
h = fir1(M-1, fgu, 'stop'); % M-1 - rząd filtru (30)
th = (0: M-1)/fp; % nowy wektor czasu dla sygnału o długości 31
% moduł transmitancji - charakterystyka amplitudowa filtru
H = abs(fft(h,Nf));
subplot(323)
plot(th, h);xlabel('czas[s]');ylabel('h(t)');
subplot(324)
plot(f, H(1:N21)); xlabel('czestotliwosc[Hz]'); ylabel('fft(h)')
%proces filtracji - liczenie splotu
y = filter(h,1,x);
wy = abs(fft(y,Nf));
subplot(325)
plot(t,y); xlabel('czas[s]'); ylabel('y(t)');
subplot(326)
plot(f, wy(1:N21)); xlabel('czestotliwosc [Hz]'); ylabel('widmo sygnalu');
