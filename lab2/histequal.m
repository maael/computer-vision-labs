function [ mapped ] = histequal( img )
    cdfmap = cdf(img);
    s = size(img);
    L = length(cdfmap);
    map = (L - 2) .* cdfmap;
    mapped = applymap(img, map);
end

