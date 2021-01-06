clear;clc;close all;
set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,06

x=linspace(-2,2,1000);
y=linspace(-2,2,1000);

z1=2*x.*exp(-2*(x.^2+y.^2));
z2=4*x.*exp(-4*(x.^2+y.^2));
z3=6*x.*exp(-6*(x.^2+y.^2));

plot3(x,y,z1,'b-','linewidth',2);zlabel('z');xlabel('x');ylabel('y');
hold on;
plot3(x,y,z2,'r-.','linewidth',2);zlabel('z');xlabel('x');ylabel('y');
hold on;
plot3(x,y,z3,'k-','linewidth',2);zlabel('z');xlabel('x');ylabel('y');
legend('z1=2*x.*exp(-2*(x.^2+y.^2))','z2=4*x.*exp(-4*(x.^2+y.^2))','z3=6*x.*exp(-6*(x.^2+y.^2))','Location','Northeast')

figure;
plot(z1,'b-','linewidth',2);
ylabel('z');
hold on;
plot(z2,'r-.','linewidth',2);
ylabel('z');
hold on;
plot(z3,'k-','linewidth',2);legend('z1=2*x.*exp(-2*(x.^2+y.^2))','z2=4*x.*exp(-4*(x.^2+y.^2))','z3=6*x.*exp(-6*(x.^2+y.^2))','Location','Northeast')
ylabel('z');