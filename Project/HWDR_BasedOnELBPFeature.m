function [ PredictionOutput1, PredictionOutput2 ] = HWDR_BasedOnELBPFeature( Trainingimages,Traininglabels,Testingimages,Testinglabels )
    TrainingSIZE=60000;
    TestingSIZE=10000;
    TrainingELBPFature=ELBPPractice(Trainingimages,TrainingSIZE);
    TestingELBPFature=ELBPPractice(Testingimages,TestingSIZE);
    
    ModelOnTheBasedOfELBPFeatures=fitctree(TrainingELBPFature,Traininglabels);
    Prediction1=predict(ModelOnTheBasedOfELBPFeatures,TestingELBPFature);
    
    ModelOnTheBasedOfELBPFeatures=fitcecoc(TrainingELBPFature,Traininglabels);
    Prediction2=predict(ModelOnTheBasedOfELBPFeatures,TestingELBPFature);
    
    PredictionOutput1=Prediction1;
    PredictionOutput2=Prediction2;
end