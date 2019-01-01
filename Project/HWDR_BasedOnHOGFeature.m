function [ PredictionOutput1,PredictionOutput2 ] = HWDR_BasedOnHOGFeature( Trainingimages,Traininglabels,Testingimages,Testinglabels )
    TrainingSIZE=60000;
    TestingSIZE=10000;
    
    TrainingHOGFature=HOGPractice(Trainingimages,TrainingSIZE);
    TestingHOGFature=HOGPractice(Testingimages,TestingSIZE);
    
    ModelOnTheBasedOfHOGFeatures=fitctree(TrainingHOGFature,Traininglabels);
    Prediction1=predict(ModelOnTheBasedOfHOGFeatures,TestingHOGFature);
    
    ModelOnTheBasedOfHOGFeatures=fitcecoc(TrainingHOGFature,Traininglabels);
    Prediction2=predict(ModelOnTheBasedOfHOGFeatures,TestingHOGFature);
    
    PredictionOutput1=Prediction1;
    PredictionOutput2=Prediction2;
end