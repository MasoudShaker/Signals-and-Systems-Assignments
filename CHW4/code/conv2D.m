function [feature_map] = conv2D(img,filters, stride, padding)
f = size(filters, 1);
% size of filters
no_filter = size(filters, 3);
% number of filters
if strcmp(padding, 'same') 
    % check if our padding has value 'same'
    p = ((f-1)/2);
    img = padarray(img, [p p]);
    % do zero padding before convulution
    % using padarray built in function
end
h = size(img, 1);
% height of input image
w = size(img, 2);
% weight of input image
ch = size(img, 3);
% number of channels of the image
% if image is rgb, it equals 3
% and if image is gray, it equals 1
feature_map = zeros(floor((h-f)/stride)+1, floor((w-f)/stride)+1);
for num = 2 : no_filter
    feature_map(:, :, num) = 0;
end
% fill our output with zeros 
% we're gonna calculate the real values and add them to these zeros
% during the convultion 
for i = 1 : no_filter
    % iterate on each filter
    for j = 1 : ch 
        % iterate on each channel
        channel_i = img(:, :, j);
        % channel i of image
        for row = 1 : stride : h-f+1
            for col = 1 : stride : w-f+1
                local = channel_i(row:row+f-1, col:col+f-1);
                conv = double(local) .* filters(:, :, i);
                % calculate convulution according to its formula
                % cast it to double cause it can get non integer values
                x = ceil(row/stride);
                y = ceil(col/stride);
                % calculate the coordinates of our output image
                feature_map(x, y, i) = feature_map(x, y, i) + sum(conv, 'all');
                % assign each part of our output image
            end
        end
    end
end
feature_map = uint8(feature_map);
% cast our output back to unsigned int 
end