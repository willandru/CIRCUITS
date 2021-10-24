clc; clear;

R=10e3; %ohms
C=10e-6; % F
TAO= R*C ; %s
Voc=0;%V
Vmax=10; %V
Vmin=0; %V
 
t=1e-3;



%Vc(T)= Vf + (Vo-Vf)*e^-t/TAO
Vc=zeros(1,10);

for i=1:1:10
    if mod(i,2)
    Vc(i)=Vmax+(Voc-Vmax)*exp(-t/TAO);
    else
    Vc(i)=Vmin+(Voc-Vmin)*exp(-t/TAO);
    end
    Voc=Vc(i);
end
Vc

TAO=TAO*1000; %ms

Vc2= Vmax* (exp(-1/TAO)-exp(-2/TAO))/(1-exp(-2/TAO))
Vc1= Vmax+(Vc2-Vmax)*exp(-1/TAO)
