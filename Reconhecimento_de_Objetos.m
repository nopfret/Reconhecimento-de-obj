clear;
clc;
close all;
% %% carrega banco de imagens
[images] = init();
alicate = cell(1,size(images,2));
ali = [];
fenda = cell(1,size(images,2));
fen = [];
boca = cell(1,size(images,2));
bo = [];
[d1 d2 d3] = base();

%% Compara 
for i = 1:length(images)
Iaux = images{i};
Iaux = im2double(Iaux);
Iaux = rgb2gray(Iaux);

Iaux = convert2binary(Iaux);


se = strel('disk',2);
Iaux = imopen(Iaux,se);
Iaux = imclose(Iaux,se);

[d] = dist(Iaux);
num1 = compara(d1,d);
num2 = compara(d2,d);
num3 = compara(d3,d);
if num1 > 0.44
    alicate{i} = images{i};
    ali = [ali; i];
   
elseif num2 > 0.9
    boca{i} = images{i};
    bo = [bo; i];
  
elseif num3 > 0.1
    fenda{i} = images{i};
    fen = [fen; i];
    
end
end
fen = fen.'; 
bo = bo.';
ali = ali.'; 


for i = 1:size(fen,2)
figure;imshow(fenda{fen(i)})
end

for i = 1:size(bo,2)
figure;imshow(boca{bo(i)})
end
close all


for i = 1:size(ali,2)
figure;imshow(alicate{ali(i)})
end
















