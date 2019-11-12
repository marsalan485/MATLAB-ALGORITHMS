clc
clear all
close all
xn=input('Enter first sequence:');
hn=input('Enter second sequence:');
L=length(hn)
y=zeros(1,L)
a=L;,e=L;,g=L;
b=0;,f=0;,c=0;
h=L-1;
%Multiplication of xn and hn%
for i=1:1:L
  for j=1:1:L
    z=xn(a-c)*hn(j);
     y(e-b)=y(e-b)+z
      c=c+1;
  end
    b=b+1;
    c=0;,e=L;
    %-----Swapping-----%
      for m=L:-1:2
       k=xn(L);
        for n=h:-1:1
          xn(g-f)=xn(n);
           f=f+1;
        end
            f=0;
             xn(1)=k;
      end
     %------------------%
      
end
%----------------------------%
d=cconv(xn,hn,L)
subplot(2,1,1)
stem(d,'k','linewidth',2.5)
title('Circular Convolution By Built In Function')
xlabel('Sequence')
ylabel('Amplitude')
subplot(2,1,2)
stem(y,'k','linewidth',2.5)
title('Circular Convolution By Self Made Algorithm')
xlabel('Sequence')
ylabel('Amplitude')
