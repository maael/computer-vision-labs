function [ map ] = cdf( img )
    s = size(img);
    n = prod(s);
    hist = imhist(img) ./ n;
    map = cumsum(hist);
end

