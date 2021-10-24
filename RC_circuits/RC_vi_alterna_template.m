clc; clear;

R=1e3; %ohms
C=1e-6; % F
TAO= R*C ; %s
Voc=0;%V
Vmax=10; %V
Vmin=0; %V
t=1e-3;

%Vc(T)= Vf + (Vo-Vf)*e^-t/TAO
Vc=zeros(1,100);

for i=1:1:100
    if mod(i,2)
    Vc(i)=Vmax+(Voc-Vmax)*exp(-t/TAO);
    else
    Vc(i)=Vmin+(Voc-Vmin)*exp(-t/TAO);
    end
    Voc=Vc(i);
end
Vc(99)
Vc(100)

T=[1e-3:1e-3:10e-3];
figure(1);
plot(T,Vc(1:10));

%% FUNCITON MODEL
% Vc[(2n-2)*TAO]= 10 * (exp(-1)-exp(-2))/(1-exp(-2))
% Vc[(2n-1)*TAO]= 10V + [(Vc[(2n-2)*TAO])-(10)]*exp(-1)

Vc2= Vmax* (exp(-1)-exp(-2))/(1-exp(-2))
Vc1= Vmax+(Vc2-Vmax)*exp(-1)