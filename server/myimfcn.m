function results = myimfcn(im)
%Image Processing Function
%
% IM      - Input image.
% RESULTS - A scalar structure with the processing results.
%

%--------------------------------------------------------------------------
% Auto-generated by imageBatchProcessor App. 
%
% When used by the App, this function will be called for every input image
% file automatically. IM contains the input image as a matrix. RESULTS is a
% scalar structure containing the results of this processing function.
%
%--------------------------------------------------------------------------



% Replace the sample below with your code----------------------------------

if(size(im,3)==3)
    % Convert RGB to grayscale
    imgray = rgb2gray(im);
end

imgray = imresize(imgray, 0.2);
hw = size(imgray);
imgray = reshape(imgray,[1,hw(1)*hw(2)]);
results.resized = imgray;


%--------------------------------------------------------------------------
