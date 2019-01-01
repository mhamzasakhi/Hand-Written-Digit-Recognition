function[ HWTMethod ] = HWTPractice( images,numImages )
    HWTmethod=zeros(numImages,15);
    for i=1:numImages
        img=reshape(images(:,i),28,28);
        [method,a,b,c]=  haart2(img);
        HWTmethod(i,:)=reshape(method,1,15);
    end
    HWTMethod=HWTmethod;

end

