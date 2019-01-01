function images= loadImages( fileName,numImages )
    fileID=readImages(fileName);
    magic=fread(fileID,1,'int32',0,'ieee-be');
    totalImages=fread(fileID,1,'int32',0,'ieee-be');
    no_rows=fread(fileID,1,'int32',0,'ieee-be');
    no_columns=fread(fileID,1,'int32',0,'ieee-be');
    val=fread(fileID,inf,'unsigned char');
    images=reshape(val,no_columns,no_rows,numImages);

    img=permute(images,[2,1,3]);
    im=reshape(img,28*28,numImages);
    im=im/255;
    images=im;
end

