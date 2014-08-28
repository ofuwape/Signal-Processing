clc, clear
load echo.mat
waveform=xx;
samplingfreq=fs;
xx=xx';
echofactor=4;
time=length(waveform)-1;
period=1/samplingfreq;
stime=0:period:(period*time);
grid on
figure(1)
plot(stime,waveform);
title('The waveform (echo excluded)');
ylabel('waveform');
xlabel('Time');
hh=[1 zeros(1,samplingfreq) 1/echofactor zeros(1,length(stime))];
yy=conv(waveform,hh);
soundsc(yy,samplingfreq);
ttnew=(0:(length(yy)-1))/samplingfreq;
figure(2)
plot(ttnew,yy);
title('The waveform (echo included)');
ylabel('Waveform');
xlabel('Time');