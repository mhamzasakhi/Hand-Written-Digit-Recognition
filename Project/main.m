% Muhammad Hamza
% Ammar Farooq Khan
% Hamid Naseem

% Load Images from Same Directory
    % These two function return Training and Testing Images with Labels
[ TrainingImages,TrainingLabels ] = getTrainingImages(); % Training Images
[ TestingImages,TestingLabels] = getTestingImages();    % Testing Images 

%img=display_network(TrainingImages(:,5));
%TrainingImages=transpose(TrainingImages);
TrainingLabels(5);
TestingLabels(15);


 %%%%%%% Call These Function. They will return the Predicted Labels of Test
 %%%%%%% Images then Compare that lables with Testing Images Labels 
    
  % these Function Two (2) set of Labels 1st prediction using Decision Tree
  % 2nd prediction using SVM Classifier 
  
[ decisionTreeprediction, SVMPrediction ]=HWDR_BasedOnHOGFeature( TrainingImages,TrainingLabels,TestingImages,TestingLabels );
perDT=percentage( decisionTreeprediction,TestingLabels ); % This function return the accuracy of Decision Tree
preSVM=percentage( SVMPrediction,TestingLabels );% This function return the accuracy of SVM

 
%   [ decisionTreeprediction, SVMPrediction ]=HWDR_BasedOnELBPFeature( TrainingImages,TrainingLabels,TestingImages,TestingLabels );
%   perDT=percentage( decisionTreeprediction,TestingLabels );
%   preSVM=percentage( SVMPrediction,TestingLabels );
  
%   [ decisionTreeprediction, SVMPrediction ]=HWDR_BasedOnHWTPFeature( TrainingImages,TrainingLabels,TestingImages,TestingLabels );
%   perDT=percentage( decisionTreeprediction,TestingLabels );
%   preSVM=percentage( SVMPrediction,TestingLabels );

%  [ decisionTreeprediction, SVMPrediction ]=HWDR_BasedOnBlackWhiteFeature( TrainingImages,TrainingLabels,TestingImages,TestingLabels );
%  perDT=percentage( decisionTreeprediction,TestingLabels );
%  preSVM=percentage( SVMPrediction,TestingLabels );
    