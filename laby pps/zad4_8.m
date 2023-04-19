
clear all; close all;
% ----------------  generowanie sinusa
fpx = 10000;
Nx = 10000;
tx = 0:1/fpx:(Nx-1)/fpx;
f0 = 1400; 
x = sin (2*pi*f0*tx);

subplot (221);
plot (tx,x);
xlabel ('czas[s]');
ylabel ('sygnal przed decymacja');

Nf = 2^11;
N21 = Nf/2 + 1;
wx = abs(fft(x,Nf));
fx = linspace(0, fpx/2, N21);
subplot (222);
plot (fx, wx(1:N21));
xlabel ('czest[Hz]');
ylabel ('modul widma');

% ------------------------------------------------------------------
%%      decymacja w pêtli
%       Tutaj nale¿y dopisaæ kod 
% ------------------------------------------------------------------
dr = 2; % 4, 5, 10

fpy = 
Ny = 
   for i=1:Ny
     y(i) = x(    ); 
   end



%%
ty = 0:1/fpy:(Ny-1)/fpy;

subplot (223);
plot (ty,y);
xlabel ('czas[s]');
ylabel ('sygnal po decymacji');

wy = abs(fft(y,Nf));
fy = linspace(0, fpy/2, N21);
subplot (224);
plot (fy, wy(1:N21));
xlabel ('czêstotliwoœæ [Hz]');
ylabel ('modu³ widma'); ylim([0 1000])

set (gcf,'Position',[50 50 800 700]);
%print -depsc ProbkAlias1