rose = imread('rose.tif');
temple = imread('temple.tif');
desert = imread('desert.tif');
landscape = imread('landscape.tif');
ret1 = imread('retim1.png');
ret2 = imread('retim2.png');
rosenoisy = imread('rose_noisy.tif');

subplot(7, 3, 1); imshow(rose);
subplot(7, 3, 2); imshow(negative(rose));
subplot(7, 3, 3); imshow(imcomplement(rose));

subplot(7, 3, 4); imshow(temple);
subplot(7, 3, 5); imshow(l2gamma(temple, 0.5));
subplot(7, 3, 6); imshow(l2gamma(temple, 2));

subplot(7, 3, 7); imshow(desert);
subplot(7, 3, 8); imshow(l2gamma(desert, 0.5));
subplot(7, 3, 9); imshow(l2gamma(desert, 2));

subplot(7, 3, 10); imshow(landscape);
subplot(7, 3, 11); imshow(histequal(landscape));
subplot(7, 3, 12); imshow(histeq(landscape));

subplot(7, 3, 13); imshow(ret1);
subplot(7, 3, 14); imshow(ret2);
subplot(7, 3, 15); imshow(histmatch(ret2, ret1));

subplot(7, 3, 16); imshow(rosenoisy);
average = fspecial('laplacian', 0);
subplot(7, 3, 17); imshow(imfilter(rosenoisy, average));
subplot(7, 3, 18); imshow(imgaussfilt(rosenoisy));

subplot(7, 3, 19); imshow(rose);
laplacian = fspecial('laplacian', 0);
subplot(7, 3, 20); imshow(imfilter(rose, laplacian));
