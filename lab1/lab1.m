lenna = imread('lenna.tif');
n = 200;

[r, g, b] = cropimage(lenna, n);
subplot(1, 3, 1); imshow(r);
subplot(1, 3, 2); imshow(g);
subplot(1, 3, 3); imshow(b);