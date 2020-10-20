function Ans=CreateNet(Input,Target)
net = newff(Input,Target,[15]);
% net = newff(Input,Target,[15]);
net.trainParam.min_grad = 0.000001;
%net.trainParam.epochs = 500;
net.divideParam.trainRatio = 75/100;
net.divideParam.valRatio = 10/100;
net.divideParam.testRatio = 15/100;
net.trainParam.max_fail = 15;
net.trainParam.showWindow=0;
% net.layers{1}.transferFcn = 'logsig';
Ans=net;
end