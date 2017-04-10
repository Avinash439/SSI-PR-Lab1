%%% Lab 1
%% Part 1 
clc;
clear all;
close all;

filename = './Lab1Data1.txt'; 

Data = load(filename); 

X=Data(:,1);
y=Data(:,2);

plotData(X,y);
w = linearReg(X,y);