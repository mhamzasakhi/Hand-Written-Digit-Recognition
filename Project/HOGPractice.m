function [ HOGMethod ]= HOGPractice (images,numImages)
    cellSize=[8 8];
    HOGmethod=zeros(numImages,144);
    for i=1:numImages
        img=reshape(images(:,i),28,28);
        HOGmethod(i,:)= extractHOGFeatures(img, 'CellSize',cellSize);
    end
    HOGMethod=HOGmethod;
end