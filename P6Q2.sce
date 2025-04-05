clc;
close;
a=imread('C:\Users\Shreyas\Downloads\Ham44.jpg');    //select your image path 
a = rgb2gray(a);
b = double(a) - 50;
b(b < 0) = 0;
b = uint8(b);
figure(1);
imshow(a);
title("Original Image");
figure(2);
imshow(b);
title("De-Enhanced Image");
