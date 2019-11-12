clc 
clear all 
close all
xn=input('Enter sequence:');
N=length(xn);                     %By Self Made Algorithm
c=zeros(1,N);                     %Zeros Assign%
for k=0:1:(N-1)
    for n=0:1:(N-1)
        p=(-2*pi*n*k);
        exp=(cos(p/N)+j*sin(p/N)); %For Exponential%
        b=xn(n+1)*exp;
        c(k+1)=c(k+1)+b;
    end
end
disp('c=')
disp(c)
f=fft(xn)
subplot(2,1,1)
stem(f,'k','linewidth',2.5)
title('DFT By Built In Function')
xlabel('Sequence')
ylabel('Amplitude')
subplot(2,1,2)
stem(c,'k','linewidth',2.5)
title('DFT ')
xlabel('Sequence')
ylabel('Amplitude')