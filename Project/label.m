function [ labels ] = label( fileName )
    fileIDlabel=fopen(fileName);
    magic=fread(fileIDlabel,2,'int32',0,'ieee-be');
    %totalLabel=fread(fileIDlabel,1,'int32',0,'ieee-be');
    labels=fread(fileIDlabel,inf,'unsigned char');
end