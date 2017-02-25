function [ mapped ] = applymap( img, map )
    s = size(img);
    mapped = zeros(s);
    for idy = 1:s(1)
        for idx = 1:s(2)
            mapped(idy, idx) = map(img(idy, idx) + 1);
        end
    end
    mapped = uint8(mapped);
end

