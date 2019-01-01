function [ BWFeature ] = BlackWhitePractice(images,numImages)
    images=transpose(images);
    black=zeros(numImages,1);
    white=zeros(numImages,1);
    for i=1:numImages
        black(i,1)=length(find(images(i,:)==0));
        white(i,1)=length(find(images(i,:)==1));
    end
    feature=zeros(numImages,2);
    feature(:,1)=black(:,1);
    feature(:,2)=white(:,1);
    BWFeature=feature;
end

