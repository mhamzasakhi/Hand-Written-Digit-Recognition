function[ SURFMethod ] = SURFPractice( images,numImages )
    HOGmethod=zeros(numImages,144);
    %validPtsObj=zeros(numImages,144);
    for i=1:numImages
        img=reshape(images(:,i),28,28);
        %regionsObj = detectMSERFeatures(img);
        %[HOGmethod(i,:), validPtsObj(i,:)] = extractFeatures(img, regionsObj);
        HOGmethod(i,:) = detectFASTFeatures(img);
        
        %HOGmethod(i,:) = detectSURFFeatures(img);
        %[HOGmethod(i,:), points] = extractFeatures(img, points.selectStrongest(10));
        %HOGmethod(i)= detectSURFFeatures(img);
    end
    HOGMethod=HOGmethod;

end

