function [TrainMSE, TestMSE, TrainErrorRate, TestErrorRate]  = SemiSupervised(Inputs,Targets)
n=size(Inputs,2)/10;
TrainInputs=Inputs(:,1:floor(n));
TrainTargets=Targets(:,1:floor(n));
TestInputs=Inputs(:,floor(n*8)+1:end);
TestTargets=Targets(:,floor(n*8)+1:end);
%% Training 
[net, tr] = train(CreateNet(TrainInputs, TrainTargets), TrainInputs, TrainTargets);
TrainInputs=[TrainInputs,Inputs(:,floor(n)+1:floor(2*n))];
TrainTargets=[TrainTargets,net(Inputs(:,floor(n)+1:floor(2*n)))];
[net, tr] = train(CreateNet(TrainInputs, TrainTargets), TrainInputs, TrainTargets);
TrainInputs=[TrainInputs,Inputs(:,floor(2*n)+1:floor(4*n))];
TrainTargets=[TrainTargets,net(Inputs(:,floor(2*n)+1:floor(4*n)))];
[net, tr] = train(CreateNet(TrainInputs, TrainTargets), TrainInputs, TrainTargets);
TrainInputs=[TrainInputs,Inputs(:,floor(4*n)+1:floor(8*n))];
TrainTargets=[TrainTargets,net(Inputs(:,floor(4*n)+1:floor(8*n)))];
[net, tr] = train(CreateNet(TrainInputs, TrainTargets), TrainInputs, TrainTargets);
EpochCounts = tr.num_epochs;
%%
[TrainMSE, TestMSE, TrainErrorRate, TestErrorRate] = GetMSEs(net, TrainInputs, TrainTargets, TestInputs, TestTargets);
end