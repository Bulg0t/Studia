N=1000;
fp = 1000;
s = rand(1,N);% był inny bo nie był wycentrowany
s = s - mean(s) % wycentrowanie szumu
s1= randn(1,N);
kmax = 300;

tau = -kmax/fp : 1/fp : kmax/fp;
rss1=xcorr(s,s,kmax,'coeff');
figure(1)
subplot(221)
plot(tau, rss1)
xlabel('Opoznienie [s]')
ylabel('Rss(k)')
subplot(222)
rss2=xcorr(s1,s1,kmax,'coeff');
plot(tau, rss2)
xlabel('Opoznienie [s]')
ylabel('Rs1s1(k)')