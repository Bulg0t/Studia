clear all;
close all;
% Wczytanie sygnału
[x,fpx] = audioread("mbi04czep.wav");
Nx = length(x);
tx = 0:1/fpx:(Nx-1)/fpx;

figure(1)
subplot(221)
plot(tx,x); xlabel('czas [s]'); ylabel('x(t)');

% Widmo sygnału
% FFT
Nfx = 2^nextpow2(Nx); % potęga dwójki większa ale najbliższa do Nx
N21x = Nfx/2 +1;
fx = linspace(0,fpx/2,N21x);
wx = abs(fft(x,Nfx));
subplot(222)
plot(fx,wx(1:N21x)); xlabel('czestotliwosc [Hz]'); ylabel('moduł widma');

dr = 4;
y = decimate(x,dr);
Ny = length(y);
fpy = fpx/dr;
ty = 0:1/fpy:(Ny-1)/fpy;
subplot(223)
plot(ty,y);xlabel('czas [s]'); ylabel('x(t)');

Nfy = 2^nextpow2(Ny);
N21y = Nfy/2+1;
fy = linspace(0,fpy/2, N21y);
wy = abs(fft(y,Nfy));
subplot(224)
plot(fy,wy(1:N21y)); xlabel('czestotliwosc [Hz]'); ylabel('moduł widma');