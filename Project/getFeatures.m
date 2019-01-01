function [ features ] = getFeatures( Trainingimages,Traininglabels,Testingimages,Testinglabels )
    features=zeros(60000,785);
    TrainingSIZE=60000;
    TestingSIZE=10000;
    TrainingHOGFature=HOGPractice(Trainingimages,TrainingSIZE);
    TestingHOGFature=HOGPractice(Testingimages,TestingSIZE);
    
    
    New_Label=Labels(1:1000);
    ModelOnTheBasedOfHOGFeatures=fitctree(TrainingHOGFature,New_Label);
    HOG_Output_Decision_Tree = predict(ModelOnTheBasedOfHOGFeatures,TestingHOGFature);
    
    %features(:,785)=labels(:,1);        
    %features(:,1:784)=images(:,:); 
end

