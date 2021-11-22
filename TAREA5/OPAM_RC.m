

R= 1e3;
C= 1e-6;

tao= R*C;

t= 0.001;

t1=[-5:t:0]; % ms
t2=[0:1:T];
t3=[T:t:12*T];


T= 1e-3;

Vi_1 = t1.*0;
Vi_2 = t2./T;
Vi_3 = (t3-T).*1;


plot(Vi_1, t1)
hold on;
plot(Vi_2, t2)
hold on;
plot(Vi_3, t3)