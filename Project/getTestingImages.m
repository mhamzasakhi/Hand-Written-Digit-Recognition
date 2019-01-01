function [ Images,Labels ] =getTestingImages()
    Images=loadImages('t10k-images.idx3-ubyte',10000);
    Labels=label('t10k-labels.idx1-ubyte');
end

