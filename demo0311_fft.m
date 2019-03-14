
%E的频谱特征-----frequency feature of E
%取数据长度T=60，取N=600；-------T=32,N=32
%给出三组不同的赋值--three groups of a and b are given as follows 
%a=0.5;b=0.5; a=1; b=1; a=0.5; b=0.1;
clear;clc;
a=0.5;  b=0.5;      %set a,b
t=[-30:0.1:30];      %set t from -30 to 30, 0.1 as interval
e_ab=atan(b./(1+a.^2.*t.^2).^0.5);      %calculate e
w=2*pi/60;                                            %T=60
e_ab_fft=abs(fft(e_ab));                                
dt=0.1;                                                  %N=600
e_ab2=e_ab_fft.*dt;
e_ab_w=e_ab2(1,1:40);                         %remove the -x axis
plot(t(301:340),e_ab_w,'LineWidth',2); %plotting
xlabel('w/(rad/s)');    ylabel('|A(jw)|');

hold on

a=1;    b=1;
t=[-30:0.1:30];         %set t from -30 to 30, 0.1 as interval
e_ab=atan(b./(1+a.^2.*t.^2).^0.5);   %calculate e
w=2*pi/60;                                          %T=60
e_ab_fft=abs(fft(e_ab));                                
dt=0.1;                                                 %N=600
e_ab2=e_ab_fft.*dt;
e_ab_w=e_ab2(1,1:40);               %remove the -x axis
plot(t(301:340),e_ab_w,'LineWidth',2); %plotting

a=0.5;  b=0.1;
t=[-30:0.1:30];      %set t from -30 to 30, 0.1 as interval
e_ab=atan(b./(1+a.^2.*t.^2).^0.5);      %calculate e
w=2*pi/60;                                           %T=60
e_ab_fft=abs(fft(e_ab));                                
dt=0.1;                                                  %N=600
e_ab2=e_ab_fft.*dt;
e_ab_w=e_ab2(1,1:40);                   %remove the -x axis
plot(t(301:340),e_ab_w,'LineWidth',2);   %plotting
legend('a=0.5,b=0.5','a=1,b=1','a=0.5,b=0.1');


