function [ eroded ] = erode( image, se )
    imY = size(image, 1);
    imX = size(image, 2);
    seY = size(se, 1);
    seX = size(se, 2);
    boundY = floor(seY / 2);
    boundX = floor(seX / 2);
    eroded = zeros(imY, imX);
    for idy = boundY + 1:imY-boundY
        for idx = boundX + 1:imX-boundX
            elArea = image(idy-boundY:idy+boundY, idx-boundX:idx+boundX);
            matching = 1;
            for sidy = 1:seY
               for sidx = 1:seX
                  if (se(sidy, sidx) == 1 && elArea(sidy, sidx) ~= 1)
                      matching = 0;
                      break;
                  end
               end
               if (matching == 0)
                  break; 
               end
            end
            if matching == 1
                eroded(idy, idx) = image(idy, idx);
            else
                eroded(idy, idx) = 0;
            end
        end
    end
end

