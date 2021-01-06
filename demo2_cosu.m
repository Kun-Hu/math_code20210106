clear;clc;close all;
set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,06

x=linspace(-2,2,2000);
y1=cos(2*pi*x);
y2=2*cos(2*pi*x-pi/3);


subplot(3,1,1);
 plot(x,y1,'b','linewidth',2);legend('y=cos(2\pix)','Location','Northeast')
 xlabel('x'); ylabel('y');
 
subplot(3,1,2);
 plot(x,y2,'r','linewidth',2);legend('y=2cos(2\pix-\pi/3)','Location','Northeast')
  xlabel('x'); ylabel('y');

subplot(3,1,3);
 plot(x,y1,'b','linewidth',2);
 hold on;
 plot(x,y2,'r','linewidth',2)
  xlabel('x'); ylabel('y');
plot(x,y2,'r',x,y1,'b');legend('y=cos(2\pix)','y=2cos(2\pix-\pi/3)','Location','Northeast')

