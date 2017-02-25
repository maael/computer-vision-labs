function [ boundary ] = boundary( image, se )
    boundary = image - erode(image, se);
end

