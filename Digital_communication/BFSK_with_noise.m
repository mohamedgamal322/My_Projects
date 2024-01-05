clc
clear
close all
%bit period
tb=1;
%SNR IN DB
snr_db=10;
%sampling frequency
fs=100000;
f1=5;
f2=10;
%generation of random binary bits
bits=randi([0,1],1,6)
t=0:1/fs:tb-(1/fs);
Eb=0.5;
phi_1=sqrt(2/tb)*cos(2*pi*f1*t);
phi_2=sqrt(2/tb)*cos(2*pi*f2*t);

% modulation of BFSK
BFSK_signal=[];
input_binary=[];
product_1=[];
product_2=[];
for x=bits
    if x==1
        modulated_signal=sqrt(Eb)*phi_1;
        product1=sqrt(Eb)*phi_1;
        product2=zeros(1,length(t));
        binary_data=ones(1,length(t));
    else
        product2=sqrt(Eb)*phi_2;
        product1=zeros(1,length(t));
        modulated_signal=sqrt(Eb)*phi_2;
        binary_data=zeros(1,length(t));
    end
    product_1=[product_1 product1];
    product_2=[product_2 product2];
    BFSK_signal=[BFSK_signal modulated_signal];
    input_binary=[input_binary binary_data];
    
end
%adding white gaussian noise to the BFSK Signal
time_total=0:1/fs:length(bits)*tb-(1/fs);
snr=10^(snr_db/10);
signal_power=rms(BFSK_signal)^2;
noise_power=signal_power/snr;
noise=sqrt(noise_power)*randn(1,length(time_total));
BFSK_signal_noise=noise+BFSK_signal;

%plotting the BFSK_SIGNAL and BFSK_signal_noise and input binary data
figure(1)
subplot(5,1,1)
plot(time_total,input_binary,'r')
title("input binary data");
xlabel("time");
ylabel("Amplitude");
ylim([-0.5,1.5]);
grid on;
subplot(5,1,2)
plot(time_total,product_1,'b')
title("product_1");
xlabel("time")
ylabel("Amplitude")
grid on 
subplot(5,1,3)
plot(time_total,product_2,'b')
title("product_2");
xlabel("time")
ylabel("Amplitude")
grid on
subplot(5,1,4)
plot(time_total,BFSK_signal,'b')
title("BFSK Modulated signal");
xlabel("time")
ylabel("Amplitude")
grid on 
subplot(5,1,5)
plot(time_total,BFSK_signal_noise,'b')
title("BFSK with noise Modulated signal");
xlabel("time")
ylabel("Amplitude")
grid on

% demodulation of BFSK_noise
output_binary=[];
product_output_1=[];
product_output_2=[];
for i=1:length(bits)
    recieved_signal_noise=BFSK_signal_noise((i-1)*length(t)+1:i*length(t));

    % trapz function used to integrate over the bit period
    product_output1=recieved_signal_noise.*phi_1;
    product_output2=recieved_signal_noise.*phi_2;
    integral_value=trapz(t,recieved_signal_noise.*phi_1)-trapz(t,recieved_signal_noise.*phi_2);
    if integral_value>0
        output_reciever(i)=1;
        data_out=ones(1,length(t));
    else
        output_reciever(i)=0;
        data_out=zeros(1,length(t));
    end
    output_binary=[output_binary data_out]; 
    
    product_output_1=[product_output_1 product_output1];
    product_output_2=[product_output_2 product_output2];
    
end
output_reciever

% plotting the output of coherent reciever and input binary data for comparing
figure(2)
subplot(4,1,1)
plot(time_total,product_output_1,'b')
title("product output 1");
xlabel("time");
ylabel("Amplitude");
grid on;

subplot(4,1,2)
plot(time_total,product_output_2,'b')
title("product output 2");
xlabel("time");
ylabel("Amplitude");
grid on;

subplot(4,1,4)
plot(time_total,input_binary,'r')
title("input binary data");
xlabel("time");
ylabel("Amplitude");
ylim([-0.5,1.5]);
grid on;

subplot(4,1,3)
plot(time_total,output_binary,'r')
title("output of coherent reciever");
xlabel("time");
ylabel("Amplitude");
ylim([-0.5,1.5]);
grid on;


       
      

    
    
