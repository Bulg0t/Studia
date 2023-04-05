f_start = 100;
f_stop = 100000000;
f_s = 250000000;
tau = 0.000001;
t = 0:1/f_s:tau-(1/f_s);
x = chirp(t,f_start,tau,f_stop);
ret_signal = radar_echo(x);
r = xcorr(x, ret_signal);
c = 300000000;
t = max(r)*(1/f_s);
figure(1)
subplot(221)
plot(x)
subplot(222)
plot(ret_signal)
odleglosc = (c*t)/2 % Droga