function [ PredictionOutput1,PredictionOutput2 ] = HWDR_BasedOnHWTPFeature( Trainingimages,Traininglabels,Testingimages,Testinglabels )
    TrainingSIZE=60000;
    TestingSIZE=10000;
    TrainingHWTFature=HWTPractice(Trainingimages,TrainingSIZE);
    TestingHWTFature=HWTPractice(Testingimages,TestingSIZE);
    
    ModelOnTheBasedOfHWTFeatures=fitctree(TrainingHWTFature,Traininglabels);
    Prediction1=predict(ModelOnTheBasedOfHWTFeatures,TestingHWTFature);
    
    ModelOnTheBasedOfHWTFeatures=fitcecoc(TrainingHWTFature,Traininglabels);
    Prediction2=predict(ModelOnTheBasedOfHWTFeatures,TestingHWTFature);
    
    PredictionOutput1=Prediction1;
    PredictionOutput2=Prediction2;
end