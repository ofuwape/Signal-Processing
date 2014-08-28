function [yy] = digitaldelay(waveform, timedelay, echofactor, samplingfreq) 
delayarray=[];
for k=1:floor(timedelay*samplingfreq)
    delayarray(k)=0;
end
disp(floor(timedelay*samplingfreq));
time=length(waveform)-1;
period=1/samplingfreq;
stime=0:period:(period*time);
hh=[1 delayarray 1/echofactor zeros(1,length(stime))];
yy=conv(waveform,hh);
soundsc(yy,samplingfreq);
end

