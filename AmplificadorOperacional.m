clear; clc;
format LONGE
	%1) Amplificador O. malo:
    r1=10000;
    r2=15000;
    ri=100000;
    ro=20;
    A1=1000;
    rl=10;
    %ecu1
    M1=[r1+ri -ri 0; ri+(A1*ri) -(ri+r2+ro+(A1*ri)) ro; -A1*ri (A1*ri)+ro -(ro+rl)]
    m1=inv(M1);
    syms v1;
    b=[v1;0;0];
    w=m1*b
    w=w./v1 
    syms v1;
    b=[v1;0;0];
    
    p=[7345740811960209/73786976294838206464;
        7342445130207847/73786976294838206464;
          -5361675233292227/36028797018963968]
      
  %% 
  %clc; 
 % clear; 
   syms vy;
    z=[vy;0;0];
    %1) Amplificador O. bueno:
     format LONGE
    R1=10000;
    R2=15000;
    Ri=1000000;
    Ro=0.1;
    A2=100000;
    Rl=10;
    %ecu1
      a=R1+Ri
     
    M2=[a -Ri 0; Ri+A2*Ri -(Ri+R2+Ro+A2*Ri) Ro; -A2*Ri A2*Ri+Ro -(Ro+Rl)]
    m2=inv(M2)
    x=m2*z
    x=x/vy
    o=[7378585844316299/73786976294838206464;7378584726464623/73786976294838206464;
       -5404182279568483/36028797018963968]
  
    