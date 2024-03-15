A=imread('lowlight.jpg');
Ainv=imcomplement(A);
Binv=imreducehaze(Ainv,'contrastenhancement','none');
B=imcomplement(Binv);


% Create a cell array containing the two images
images = {A, B};
% Display the images as a montage with titles
montage(images, 'Size', [1 2], 'BorderSize', [10 10], 'BackgroundColor', 'w');
title("original vs enhanced");
