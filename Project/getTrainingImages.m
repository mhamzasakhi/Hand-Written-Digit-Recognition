function [ Images,Labels ] = getTrainingImages()
    Images=loadImages('train-images.idx3-ubyte',60000);    
    Labels=label('train-labels.idx1-ubyte');
end

