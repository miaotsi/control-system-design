%dE/dt的变化特征-----changing method of dE/dt
%给出三组不同的赋值--three groups of a and b are given as follows 
%a=0.5;b=0.5; a=1; b=1; a=0.5; b=0.1;
clear;clc;
a=0.5;  b=0.5;      %set a,b
t=[-10:0.1:10];      %set t from -10 to 10, 0.1 as interval
de_ab=demo0311_de(a,b,t);      %function de
plot(t,de_ab,'LineWidth',2);        %plotting
xlabel('t');    ylabel('dE/dt');

hold on

a=1;    b=1;
t=[-10:0.1:10];
de_ab=demo0311_de(a,b,t);
plot(t,de_ab,'LineWidth',2);

a=0.5;  b=0.1;
t=[-10:0.1:10];
de_ab=demo0311_de(a,b,t);
plot(t,de_ab,'LineWidth',2);
legend('a=0.5,b=0.5','a=1,b=1','a=0.5,b=0.1');


%-------------------------------------------------------
%d2E/dt2的变化特征---changing method of d2E/dt2
%给出三组不同的赋值--three groups of a and b are given as follows  
%a=0.5;b=0.5; a=1; b=1; a=0.5; b=0.1;

a=0.5;  b=0.5;          %set a,b
t=[-10:0.1:10];         %set t from -10 to 10, 0.1 as interval
dde_ab=demo0311_dde(a,b,t);     %function dde
plot(t,dde_ab,'LineWidth',2);          %plotting
xlabel('t');
ylabel('d2E/dt2');

hold on

a=1;    b=1;
t=[-10:0.1:10];
dde_ab=demo0311_dde(a,b,t);
plot(t,dde_ab,'LineWidth',2);

a=0.5;  b=0.1;
t=[-10:0.1:10];
dde_ab=demo0311_dde(a,b,t);
plot(t,dde_ab,'LineWidth',2);
legend('a=0.5,b=0.5','a=1,b=1','a=0.5,b=0.1');
