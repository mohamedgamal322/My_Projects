clc
clear
close all
%bit period
tb=1;
%fixed number of cycles
nc=2.5;
%SNR IN DB
snr_db=10;
%fi=(nc+i)/tb
f1=(nc+1)/tb;
f2=(nc+2)/tb;
% f1=5;
% f2=10;
%generation of random binary bits
bits=randi([0,1],1,6)
t=0:0.01:tb-0.01;
Eb=0.5;
phi_1=sqrt(2/tb)*cos(2*pi*f1*t);
phi_2=sqrt(2/tb)*cos(2*pi*f2*t);
%s1=sqrt((2*Eb)/tb)*cos(2*pi*f1*t);
%s2=sqrt((2*Eb)/tb)*cos(2*pi*f2*t);
% modulation of BFSK
BFSK_signal=[];
input_binary=[];
for x=bits
    if x==1
        modulated_signal=sqrt(Eb)*phi_1;
        binary_data=ones(1,length(t));
    else
        modulated_signal=sqrt(Eb)*phi_2;
        binary_data=zeros(1,length(t));
    end
    BFSK_signal=[BFSK_signal modulated_signal];
    input_binary=[input_binary binary_data];
end
%adding white gaussian noise to the BFSK Signal
time_total=0:0.01:length(bits)*tb-0.01;
snr=10^(snr_db/10);
signal_power=rms(BFSK_signal)^2;
noise_power=signal_power/snr;
noise=sqrt(noise_power)*randn(1,length(time_total));
BFSK_signal_noise=noise+BFSK_signal;

%plotting the BFSK_SIGNAL and BFSK_signal_noise and input binary data

figure(1)
subplot(3,1,1)
plot(time_total,input_binary,'r')
title("input binary data");
xlabel("time");
ylabel("Amplitude");
ylim([-0.5,1.5]);
grid on;

subplot(3,1,2)
plot(time_total,BFSK_signal,'b')
title("BFSK Modulated signal");
xlabel("time")
ylabel("Amplitude")
grid 

subplot(3,1,3)
plot(time_total,BFSK_signal_noise,'b')
title("BFSK with noise Modulated signal");
xlabel("time")
ylabel("Amplitude")
grid on


% plotting the constellation without noise

for x=bits
    if x==0
        figure(2)
        plot(0,sqrt(Eb),'o','markerfacecolor','r','markersize',5)
        hold on
    else
        figure(2)
        plot(sqrt(Eb),0,'o','markerfacecolor','r','markersize',5)
        title("constelltion diagram of BFSK")
        hold on
    end
end

% demodulation of BFSK_noise
output_binary=[];
for i=1:length(bits)
    recieved_signal=BFSK_signal_noise((i-1)*length(t)+1:i*length(t));
    % trapz function used to integrate over the bit period
    integral_value=trapz(t,recieved_signal.*phi_1)-trapz(t,recieved_signal.*phi_2);
    if integral_value>0
        output_reciever(i)=1;
        data_out=ones(1,length(t));
    else
        output_reciever(i)=0;
        data_out=zeros(1,length(t));
    end
    output_binary=[output_binary data_out]; 
end
output_reciever

% plotting the output of coherent reciever
figure(3)
plot(time_total,output_binary,'r')
title("output of coherent reciever");
xlabel("time");
ylabel("Amplitude");
ylim([-0.5,1.5]);
grid on;


% find total number of cylcles of modulated signal
cycles=0;
for x=bits
    if x==0
        cycles=cycles+4;
    else
        cycles=cycles+3;
    end
end
cycles
       
      

    
    
