function[ ELBPMethod ] = ELBPPractice( images,numImages )
    ELBPmethod=zeros(numImages,59);
    for i=1:numImages
        img=reshape(images(:,i),28,28);
        ELBPmethod(i,:)=  extractLBPFeatures(img);
    end
    ELBPMethod=ELBPmethod;

end

