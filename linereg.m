%%%Lab1
%% Part 2
% clc;
% clear all;
% close all;

filename = './Lab1Data2.txt';  % loading file 

Data = load(filename); 

X=Data(:,1:2);


y=Data(:,3);
%plotData(X,y);
w = linearRegmulti(X,y);%FUNCTION CALL FOR CALCULATING W
%  w =linearReg(X,y)
[Xn,mu,sigma]=FeatureNormalize(X);
w1=linearRegmulti(Xn,y);
a=[1,(1650-mu)/sigma,(3-mu)/sigma]';
Prediction=w1'*a;
Xn = [ones(size(Xn,1),1) Xn];

w=zeros(1,size(Xn,2));
alpha=0.3;
Niter=100;
w=GradientDescent(Xn,y,w,alpha,Niter);
