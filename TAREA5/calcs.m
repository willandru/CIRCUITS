
clc; clear; format shortE;
R= 1e3;
C=1e-6;
tao=R*C
T=1e-6;

Vo=-(R*C)/T


ex= -2*T/tao
E= exp(ex)
Vc_1= Vo-Vo*exp(-T/tao)
Vc_2= Vc_1*exp(-T/tao)
Vc_3= Vc_2*exp(-T*2/tao)
Vc_4= Vc_3*exp(-T*3/tao)
Vc_5= Vc_4*exp(-T*4/tao)
Vc_6= Vc_5*exp(-T*5/tao)
Vc_7= Vc_6*exp(-T*6/tao)
Vc_8= Vc_7*exp(-T*7/tao)
Vc_9= Vc_8*exp(-T*8/tao)
Vc_10= Vc_9*exp(-T*9/tao)