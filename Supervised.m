function [TrainMSE, TestMSE, TrainErrorRate, TestErrorRate]  = Supervised(Inputs,Targets,number)
%% select train and test 
n=size(Inputs,2);
NTest=number:4:n;
NTrain=1:n;
n=size(NTest,2);
for i=1:n
NTrain=NTrain(NTrain~=NTest(i));
end
TrainInputs=Inputs(:,NTrain);
TrainTargets=Targets(:,NTrain);
TestInputs=Inputs(:,NTest);
TestTargets=Targets(:,NTest);
%%
[net, tr] = train(CreateNet(TrainInputs,TrainTargets), TrainInputs, TrainTargets);
EpochCounts = tr.num_epochs;
[TrainMSE, TestMSE, TrainErrorRate, TestErrorRate]  = GetMSEs(net, TrainInputs, TrainTargets, TestInputs, TestTargets);
end

