image = zeros(8);
image(2, 4) = 1;
image(2, 5) = 1;
image(2, 6) = 1;
image(3, 3) = 1;
image(3, 4) = 1;
image(3, 5) = 1;
image(3, 6) = 1;
image(4, 2) = 1;
image(4, 3) = 1;
image(4, 4) = 1;
image(4, 5) = 1;
image(5, 4) = 1;
image(6, 2) = 1;
image(6, 3) = 1;
image(6, 4) = 1;

se = zeros(3);
se(1, 2) = 1;
se(2, 1) = 1;
se(2, 2) = 1;
se(2, 3) = 1;
se(3, 2) = 1;

rows = 7;
cols = 2;

subplot(rows, cols, 1); imshow(image); title('Original');
subplot(rows, cols, 2); imshow(se); title('SE');

subplot(rows, cols, 3); imshow(erode(image, se)); title('My Eroded');
subplot(rows, cols, 4); imshow(imerode(image, se)); title('Matlab Eroded');

subplot(rows, cols, 5); imshow(dilate(image, se)); title('My Dilated');
subplot(rows, cols, 6); imshow(imdilate(image, se)); title('Matlab Dilated');

subplot(rows, cols, 7); imshow(dilate(erode(image, se), se)); title('My Opened');
subplot(rows, cols, 8); imshow(imopen(image, se)); title('Matlab Opened');

subplot(rows, cols, 9); imshow(erode(dilate(image, se), se)); title('My Closed');
subplot(rows, cols, 10); imshow(imclose(image, se)); title('Matlab Closed');

fingerprint = imread('images/fingerprint.tif');
fingerprintse = ones(3);
subplot(rows, cols, 11); imshow(fingerprint); title('Original Fingerprint');
subplot(rows, cols, 12); imshow(dilate(erode(fingerprint, fingerprintse), fingerprintse)); title('My Fingerprint');

head = imread('images/head.tif');
headse = ones(3);
subplot(rows, cols, 13); imshow(head); title('Original Head');
subplot(rows, cols, 14); imshow(boundary(head, headse)); title('My Head');