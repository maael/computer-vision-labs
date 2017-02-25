function [ out ] = l2gamma( img, gam )
    out = im2double(img).^gam;
end

