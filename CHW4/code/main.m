clc; 
clear;

%%%%%%%%%%% READ THE INPUT IMAGES %%%%%%%%%%%
bengio_in = imread('images/bengio.jpeg');
% 1. bengio image
leskovec_in = imread('images/leskovec.jpeg');
% 2. leskovec image
andrew_in = imread('images/andrew.jpeg');
% 3. andrew image
goodfellow_in = imread('images/goodfellow.jpeg');
% 4. goodfellow image

%%%%%%%%%%% DEFINE FILTERS %%%%%%%%%%%
horizontal_edge = [[-1,-1,-1];
                   [0,0,0];
                   [1,1,1]];
               
vertical_edge = [[-1,0,1];
                 [-1,0,1];
                 [-1,0,1]];
             
sharpening = [[0,-1,0];
              [-1,5,-1];
              [0,-1,0]];
          
sobel_horizontal = [[-1,-2,-1];
                    [0,0,0];
                    [1,2,1]];
sobel_vertical = [[-1,0,1];
                  [-2,0,2];
                  [-1,0,1]];
              
gaussian_5x5 = (1/273)*[[1,4,7,4,1];
                        [4,16,26,16,4];
                        [7,26,41,26,7];
                        [4,16,26,16,4];
                        [1,4,7,4,1]];
                    
averaging_7x7 = (1/49)*ones(7,7);
                   
% concatening filters to build the `filters` tensor
filters2 = cat(3, horizontal_edge, vertical_edge);
filters3 = cat(3, sharpening, sobel_horizontal, sobel_vertical);
%%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
stride = 2;
padding = 'same';
%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%
bengio_out = conv2D(bengio_in, gaussian_5x5, 1, 'valid');
leskovec_out = conv2D(leskovec_in, filters2, 2, 'same');
andrew_out = conv2D(andrew_in, filters3, 2, 'same');
goodfellow_out = conv2D(goodfellow_in, averaging_7x7, 3, 'valid');
% 1. bengio 
figure(1);
subplot(1, 2, 1), imshow(bengio_in);
title('Mr.bengio');
subplot(1, 2, 2), imshow(bengio_out);
title('gaussian 5x5 bengio');
% 2. leskovec
figure(2);
subplot(2, 2, 1), imshow(leskovec_in);
title('Mr.leskovec');
subplot(2, 2, 2), imshow(leskovec_out(:, :, 1));
title('horizontal edge leskovec');
subplot(2, 2, 3), imshow(leskovec_out(:, :, 2));
title('vertical edge leskovec');
% 3. andrew
figure(3);
subplot(2, 2, 1), imshow(andrew_in);
title('Mr.andrew');
subplot(2, 2, 2), imshow(andrew_out(:, :, 1));
title('sharpening andrew');
subplot(2, 2, 3), imshow(andrew_out(:, :, 2));
title('sobel horizontal andrew');
subplot(2, 2, 4), imshow(andrew_out(:, :, 3));
title('sobel vertical andrew');
% 4. goodfellow
figure(4);
subplot(1, 2, 1), imshow(goodfellow_in);
title('Mr.goodfellow');
subplot(1, 2, 2), imshow(goodfellow_out);
title('averaging 7x7 goodfellow'); 
%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%