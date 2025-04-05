clc;
img1 = imread('C:\Users\Shreyas\Downloads\dog.jpeg');     //select your image path
img2 = imread('C:\Users\Shreyas\Downloads\dog1.jpg');     //select your image path
img1 = rgb2gray(img1);  
img2 = rgb2gray(img2);
img1 = img1 > 128;  
img2 = img2 > 128; 
if size(img1) ~= size(img2) then
    img2 = imresize(img2, size(img1)); 
end
added_img = img1 + img2;
sub_img=img1 - img2;
subplot(1, 4, 1);
imshow(img1);
title("Image 1");
subplot(1, 4, 2);
imshow(img2);
title("Image 2");
subplot(1, 4, 3);
imshow(added_img);
title("Image Addition Result");
subplot(1, 4, 4);
imshow(sub_img);
title("Image Subtraction Result");
