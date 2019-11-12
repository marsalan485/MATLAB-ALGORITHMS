clc;clear all,close all
xn=input('Enter first sequence:');
hn=input('Enter second sequence:');
x=length(xn);,h=length(hn);
Xn=[xn,zeros(1,(h-1))];
Hn=[hn,zeros(1,(x-1))];
L=x+h-1;
y=zeros(1,L)
a=0;
%Multiplication of xn and hn%
%----For index 1 to (Length of xn or hn)----%
for i=1:1:x
 for j=1:1:i
     k=Xn(i-a)*Hn(j);
     y(i)=y(i)+k
     a=a+1;
 end
    a=0;
end
%-----------------------------------------%
%----For index X+1 to L=hn+xn-1----%
for i=x+1:1:L
 for j=1:1:i
     k=Xn(i-a)*Hn(j);
     y(i)=y(i)+k
     a=a+1;
 end
    a=0;
end
%----------------------------%
b=xcorr(xn,hn)
subplot(2,1,1)
stem(b,'k','linewidth',2.5)
title('Linear Convolution By Built In Function')
xlabel('Sequence')
ylabel('Amplitude')
subplot(2,1,2)
stem(y,'k','linewidth',2.5)
title('Linear Convolution By Self Made Algorithm')
xlabel('Sequence')
ylabel('Amplitude')