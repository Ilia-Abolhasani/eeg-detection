function Ans=NN(Inputs,Targets)
%% Supervised
    %1
  [TrainMSE1, TestMSE1, TrainErrorRate1, TestErrorRate1]  =....
     Supervised(Inputs,Targets,1);
    %2
  [TrainMSE2, TestMSE2, TrainErrorRate2, TestErrorRate2]  =....
     Supervised(Inputs,Targets,2);
    %3
   [TrainMSE3, TestMSE3, TrainErrorRate3, TestErrorRate3]  =....
      Supervised(Inputs,Targets,3);
     %4
   [TrainMSE4, TestMSE4, TrainErrorRate4, TestErrorRate4]  =....
     Supervised(Inputs,Targets,4);
%% SemiSupervised
 [TrainMSE5, TestMSE5, TrainErrorRate5, TestErrorRate5]  =....
     SemiSupervised(Inputs,Targets);
 
%% return 
Ans=cell(1,4);
Ans(1)={[TrainMSE1, TestMSE1, TrainErrorRate1, TestErrorRate1]};
Ans(2)={[TrainMSE2, TestMSE2, TrainErrorRate2, TestErrorRate2]};
Ans(3)={[TrainMSE3, TestMSE3, TrainErrorRate3, TestErrorRate3]};
Ans(4)={[TrainMSE4, TestMSE4, TrainErrorRate4, TestErrorRate4]};
Ans(5)={[TrainMSE5, TestMSE5, TrainErrorRate5, TestErrorRate5]};
end