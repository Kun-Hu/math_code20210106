clear;clc;close all;format long
set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,06

m=12; %手动输入运行多少次，获得pi的近似值,一般取4就可以了
n=6;%初始多边形的边数
nn(1)=n;
S6=(3/2)*sqrt(3);
SSn(1)=S6;
x6=1;
x(1)=x6;
h6=sqrt(1-(x6/2)^2);
h(1)=h6;

for i=1:m
    Sn=SSn(i)+n*(1/2)*x(i)*(1-h(i));
    SSn(i+1)=Sn;
    x(i+1)=sqrt((x(i)/2)^2+(1-h(i))^2);
     h(i+1)=sqrt(1-(x(i+1)/2)^2);
n=n*2;
nn(i+1)=n;
end
SSn;
pi=SSn(end)

figure
plot(nn(1:end),SSn,'b-s','linewidth',3)
xlabel('正多边形的边数')
ylabel('圆周率的近似值')
hold on;
real=pi*ones(size(SSn));
plot(nn(1:end),real,'r-*','linewidth',3)
legend('模拟值','真实值')

%% 
figure
plot(nn(1:end),abs((real'-SSn')./real),'b-*','linewidth',3);
legend('相对误差')
xlabel('正多边形的边数')
ylabel('模拟的相对误差')
