clear;clc;close all;format long
set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,06

m=12; %�ֶ��������ж��ٴΣ����pi�Ľ���ֵ,һ��ȡ4�Ϳ�����
n=6;%��ʼ����εı���
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
xlabel('������εı���')
ylabel('Բ���ʵĽ���ֵ')
hold on;
real=pi*ones(size(SSn));
plot(nn(1:end),real,'r-*','linewidth',3)
legend('ģ��ֵ','��ʵֵ')

%% 
figure
plot(nn(1:end),abs((real'-SSn')./real),'b-*','linewidth',3);
legend('������')
xlabel('������εı���')
ylabel('ģ���������')
