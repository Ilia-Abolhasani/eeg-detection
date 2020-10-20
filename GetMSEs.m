function [TrainMSE, TestMSE, TrainErrorRate, TestErrorRate] = GetMSEs(net, TrainIns, TrainGoals, TestIns, TestGoals)
TestOuts = net(TestIns);
TestMSE = mse(net, TestGoals, TestOuts);
[m1,n1] = max(TestOuts);
[m2,n2] = max(TestGoals);
errors = (n1~=n2);
TestErrorsCount = sum(sum(errors));
TestErrorRate = round(10000*(TestErrorsCount / size(TestIns,2)))/100;
TrainOuts = net(TrainIns);
TrainMSE = mse(net, TrainGoals, TrainOuts);
[m1,n1] = max(TrainOuts);
[m2,n2] = max(TrainGoals);
errors = (n1~=n2);
TrainErrorsCount = sum(sum(errors));
TrainErrorRate = round(10000*(TrainErrorsCount / size(TrainIns,2)))/100;
end