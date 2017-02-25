# COC202 Computer Vision
## Lab 3 – Morphological image processing

In this lab, we will implement some morphological image processing operations and compare
them to those of Matlab’s image processing toolbox.

If you have not yet finished the exercises from the previous lab, do them first.

1. Create binary image matrices for the sample image and the structuring element from the
lecture, i.e. for the following: (Images of binary image and SE).

2. Write a function that implements a morphological erosion operation. The function should
be passed an image and a structuring element (of size 3x3) and return the eroded image.
Try your function on the above image.
Look for the equivalent function in Matlab’s image processing toolbox to see whether
you obtain the same result.

3. Write a function that implements a morphological dilation operation. The function should
be passed an image and a structuring element (of size 3x3) and return the dilated image.
Try your function on the above image.
Look for the equivalent function in Matlab’s image processing toolbox to see whether
you obtain the same result.

4. Write a function that implements a morphological opening operation. The function should
be passed an image and a structuring element (of size 3x3) and return the opened image.
Try your function on the above image.
Look for the equivalent function in Matlab’s image processing toolbox to see whether
you obtain the same result.

5. Write a function that implements a morphological closing operation. The function should
be passed an image and a structuring element (of size 3x3) and return the opened image.
Try your function on the above image.
Look for the equivalent function in Matlab’s image processing toolbox to see whether
you obtain the same result.

6. For the last example (the closing example), you will probably get a different result from
that of the image processing toolbox. Why?

7. Download the fingerprint.tif image from learn and apply morphological operations to
remove image noise and enhance the ridges of the fingerprint.

8. Write a function that performs morphological boundary extraction.
Download the head.tif image from learn and apply your function to it.

9. Write a function that displays the results of the previous exercise, asks the user to click
somewhere inside the boundary of the head (Matlab’s getpts() function should be
useful here) and then performs morphological region/hole filling.
