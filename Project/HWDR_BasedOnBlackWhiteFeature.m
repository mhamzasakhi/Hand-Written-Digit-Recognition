function [ PredictionOutput1,PredictionOutput2 ] = HWDR_BasedOnBlackWhiteFeature( Trainingimages,Traininglabels,Testingimages,Testinglabels )
    TrainingSIZE=60000;
    TestingSIZE=10000;
    TrainingBlackWhiteFature=BlackWhitePractice(Trainingimages,TrainingSIZE);
    TestingBlackWhiteFature=BlackWhitePractice(Testingimages,TestingSIZE);
 
    ModelOnTheBasedOfBlackWhiteFeatures=fitctree(TrainingBlackWhiteFature,Traininglabels);
    Prediction1=predict(ModelOnTheBasedOfBlackWhiteFeatures,TestingBlackWhiteFature);
    
    ModelOnTheBasedOfBlackWhiteFeatures=fitcecoc(TrainingBlackWhiteFature,Traininglabels);
    Prediction2=predict(ModelOnTheBasedOfBlackWhiteFeatures,TestingBlackWhiteFature);
    
    PredictionOutput1=Prediction1;
    PredictionOutput2=Prediction2;
end

