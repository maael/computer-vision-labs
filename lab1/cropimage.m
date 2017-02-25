function [ r, g, b ] = cropimage( img, n )
imgsize = size(img);
crop = [imgsize(1) - n, imgsize(2) - n];
r = img(n:crop(1), n:crop(2), 1);
g = img(n:crop(1), n:crop(2), 2);
b = img(n:crop(1), n:crop(2), 3);
end

