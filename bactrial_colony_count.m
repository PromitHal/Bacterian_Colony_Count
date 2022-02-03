%-------------------------------------------------------------------------%
%Loading the image
%image=imread('C:\Users\PROMIT\Downloads\bacteria.jpg');
image=imread('final.png');
%Showing the image
figure(1),
imshow(image);
title('Original Image');
%-------------------------------------------------------------------------%
%Converting into black and white image
image_bw=im2bw(image); %#ok<IM2BW>
%Displaying the black and white image
figure(2),
imshow(image_bw);
title('Black and White Image');
%-------------------------------------------------------------------------%
%Morphological image processing
%-------------------------------------------------------------------------%
%Structure element is set to be a disk of radius 3 
structure_elem=strel('disk',3);
%-------------------------------------------------------------------------%
%Morphological dilation: It involves the dilation of an image.
image_processed=imdilate(image_bw,structure_elem);
figure(3),
imshow(image_processed);
title('Image after dilation');
%-------------------------------------------------------------------------%
%Morphological erosion: It involves the erosion of an image.
structure_elem_new=strel('disk',3);
image_final=imerode(image_processed,structure_elem_new);
%Displaying the final image
figure(4),
imshow(image_final);
title('Image after erosion');
%-------------------------------------------------------------------------%
%Counting the number of bacteria
[lab_image,count]=bwlabel(image_final);
%-------------------------------------------------------------------------%
%Displaying the number of bacteria counted
fprintf("The number of bacteria detected is %d",count);

