clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,06

a1=2;%指数函数的底数，可自行更改
a2=1/2;
a3=6;
a4=1/6;

x=linspace(-2,2,1000);
y1=a1.^x;
y2=a2.^x;
y3=a3.^x;
y4=a4.^x;

subplot(1,4,1);
 plot(x,y1,'b','linewidth',2);legend('y=2^x','Location','NorthWest')
 xlabel('x'); ylabel('y');
 
subplot(1,4,2);
 plot(x,y2,'r','linewidth',2);legend('y=（1/2）^x','Location','NorthWest')
  xlabel('x'); ylabel('y');
  
subplot(1,4,3);
plot(x,y3,'k','linewidth',2);legend('y=6^x','Location','NorthWest')
 xlabel('x'); ylabel('y');
 
subplot(1,4,4);
plot(x,y4,'m','linewidth',2);legend('y=（1/6）^x','Location','NorthWest')
 xlabel('x'); ylabel('y');
 
