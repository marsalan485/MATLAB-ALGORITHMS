clc
clear all
close all
Xk=input('Enter first sequence:');
N=length(Xk);
c=zeros(1,N);    %Zeros Assign%
for n=0:1:(N-1);
    for k=0:1:N-1;
        p=(2*pi*i*k*n);
        pow=p/N;
        c(k+1)=Xk(k+1)*exp(pow);
    end
    d(n+1)=1/N*(sum(c));
end
z=abs(d)
xn=ifft(Xk)
subplot(2,1,1)
stem(xn,'k','linewidth',2.5)
title('IDFT By Built In Function')
xlabel('Sequence')
ylabel('Amplitude')
subplot(2,1,2)
stem(z,'k','linewidth',2.5)
title('IDFT Self Made Algorithm')
xlabel('Sequence')
ylabel('Amplitude')

