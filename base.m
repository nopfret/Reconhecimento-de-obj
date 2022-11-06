function [dist_ali dist_boca dist_fenda]=base()
%% Base de comparação alicate;
Alicate = imread('alicate04.png');
Alicate = im2double(Alicate);
Alicate = rgb2gray(Alicate);

Alicate = convert2binary(Alicate);

se = strel('disk',2);
Alicate = imopen(Alicate,se);
Alicate = imclose(Alicate,se);

[u,v] = borda(Alicate);

[dist_ali] = dist(Alicate);

%% Boca
Boca = imread('chave_boca03.png');
Boca = im2double(Boca);
Boca = rgb2gray(Boca);


Boca = convert2binary(Boca);

se = strel('disk',2);
Boca = imopen(Boca,se);
Boca = imclose(Boca,se);

[dist_boca] = dist(Boca);

%% fenda
fenda = imread('chave_fenda03.png');
fenda = im2double(fenda);
fenda = rgb2gray(fenda);

fenda = convert2binary(fenda);

se = strel('disk',2);
fenda = imopen(fenda,se);
fenda = imclose(fenda,se);

[dist_fenda] = dist(fenda);

end