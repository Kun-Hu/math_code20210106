clear;clc;close all;format long
set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu, Xiaofeng Pan
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,06
%�ڶ��ַ��������Ǻ����ķ���)����Բ����

m=6;
n=6;%����εı���
nn(1)=n;
for i=1:m
    S(i)=1/2*n*sin(2*pi/n);
%      if S>3.14
%          break;
% %      else
%          n=n*i;
%          S=1/2*n*sin(2*pi/n);
%          n
%      end
n=n*2;
  nn(i+1)=n;
end
pi=S(end)
plot(nn(1:end-1),S,'b-','linewidth',2)
xlabel('������εı���')
ylabel('Բ���ʵĽ���ֵ')
hold on;
plot(nn(1:end-1),pi*ones(size(S)),'r--','linewidth',2)
