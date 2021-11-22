
T=1e-3;
t=[T*2:T: T*12];



R= 1e3;
C= 1e-6;
tao= R*C;


Vo= -R*C/T;
y= -exp(-((t)/(R*C)));


t1=[0:T/10 : T]

Vc= Vo + (0 - Vo)*exp(-t1./tao)

Vc2= 0 + (Vc(11) - 0) * exp(-(t)/tao)
plot(t1,Vc)
hold on
plot(t, Vc2)