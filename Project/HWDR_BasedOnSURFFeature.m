function [ PredictionOutput ] = HWDR_BasedOnSURFFeature( Trainingimages,Traininglabels,Testingimages,Testinglabels )
    TrainingSIZE=60000;
    TestingSIZE=10000;
    TrainingSURFFature=SURFPractice(Trainingimages,TrainingSIZE);
    TestingSURFFature=SURFPractice(Testingimages,TestingSIZE);
    
    %ModelOnTheBasedOfSURFFeatures=fitctree(TrainingSURFFature,Traininglabels);
    %Prediction=predict(ModelOnTheBasedOfSURFFeatures,TestingSURFFature);


end