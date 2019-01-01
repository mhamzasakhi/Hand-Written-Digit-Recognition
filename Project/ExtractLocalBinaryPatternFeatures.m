function[ HOGMethod ] = ExtractLocalBinaryPatternFeatures( images,numImages )


    HOGmethod=zeros(numImages,60);

    for i=1:numImages
        img=reshape(images(:,i),28,28);
        HOGmethod(i,:)=  extractLBPFeatures(img);
    end
    HOGMethod=HOGmethod;

end

