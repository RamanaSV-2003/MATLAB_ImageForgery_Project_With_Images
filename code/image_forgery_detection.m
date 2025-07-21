
clc;
clear all;
close all;

filename = {'../input/yash.jpg','../input/yash_tampered.jpg'};

Nb = [2, 8]; % dimension of statistics
Ns = 1;      % number of cumulated blocks
bayer = [0, 1; 1, 0];

for i = 1:2:2
    im_true = imread(filename{i});
    im = imread(filename{i+1});

    for j = 1:2
        [map, stat] = CFAloc(im, bayer, Nb(j), Ns);
        [h, w] = size(map);

        stat(isnan(stat)) = 1;
        data = log(stat(:));
        data = data(~(isinf(data) | isnan(data)));

        n_bins = round(sqrt(length(data)));

        figure;
        subplot(2,2,1), imshow(im_true), title('Original Image');
        subplot(2,2,2), imshow(im), title('Tampered Image');
        subplot(2,2,3), imagesc(map), colormap('gray'), axis equal, axis([1 w 1 h]), title('Detected Forgery');

        display('Press any key to continue...');
        pause;
    end
end
