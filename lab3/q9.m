head = imread('images/head.tif');
headse = ones(3);

image = boundary(head, headse);

se = zeros(3);
se(1, 2) = 1;
se(2, 1) = 1;
se(2, 2) = 1;
se(2, 3) = 1;
se(3, 2) = 1;

imshow(image);

[x, y] = ginput(1);
filled = zeros(size(head));
filled(y, x) = 1;

previous = zeros(size(head));
new = filled;

while (~isequal(previous, new))
   previous = repmat(new, 1, 1);
   new = dilate(previous, se) - image;
   imshow(new);
end

imshow(image + new);