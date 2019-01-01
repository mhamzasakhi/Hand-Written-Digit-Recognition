function [ percentage ] = percentage( predictionLabels,TestingLabels )
   % [rocw,col]=size(predictionLabels);
    flage=0;
    SIZE=10000;
    for i=1:SIZE
        if(predictionLabels(i)==TestingLabels(i))
            flage=flage+1;
        end
    end
    percentage=(flage*100)/SIZE;    
end

