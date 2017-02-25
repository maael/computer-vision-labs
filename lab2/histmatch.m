function [ match ] = histmatch( source, target)
    img1g = rgb2gray(source);
    img2g = rgb2gray(target);
    cdf1 = cdf(img1g);
    cdf2 = cdf(img2g);
    map = zeros(size(cdf1));
    for idx = 1 : length(cdf1)
        [~, location] = min(abs(cdf1(idx) - cdf2));
        map(idx) = location - 1;
    end
    match = applymap(img1g, map);
end

