clc;
clear all;
close all;
%% Ans1
load('./Dataset/SubB_6chan_2LR.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans1=NN(EEGDATA,LABELS');
%% Ans2
load('./Dataset/SubC_6chan_2LR_s5.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans2=NN(EEGDATA,LABELS');
%% Ans3
load('./Dataset/SubC_6chan_3LRF_s1.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans3=NN(EEGDATA,LABELS');
%% Ans4
load('./Dataset/SubC_6chan_3LRF_s2.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans4=NN(EEGDATA,LABELS');
%% Ans5
load('./Dataset/SubC_6chan_3LRF_s3.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans5=NN(EEGDATA,LABELS');
%% Ans6
load('./Dataset/SubD_5chan_2LR.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans6=NN(EEGDATA,LABELS');
%% Ans7
load('./Dataset/SubE_5chan_2LR.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans7=NN(EEGDATA,LABELS');
%% Ans8
load('./Dataset/SubF_6chan_2LR.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans8=NN(EEGDATA,LABELS');
%% Ans9
load('./Dataset/SubG_6chan_2LR.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans9=NN(EEGDATA,LABELS');
%% Ans10
load('./Dataset/SubH_6chan_2LR.mat');
temp(:,:)=EEGDATA(1,:,:);
EEGDATA=temp;
Ans10=NN(EEGDATA,LABELS');