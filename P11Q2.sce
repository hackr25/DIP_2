clc();
clear();
close();

img1 = imread('C:\Users\Shreyas\Downloads\dog.jpeg');     //select your image path
img2 = imread('C:\Users\Shreyas\Downloads\dog1.jpg');     //select your image path

img1 = rgb2gray(img1);
img2 = rgb2gray(img2);

img1 = img1 > 128;
img2 = img2 > 128;

[r1, c1] = size(img1);
[r2, c2] = size(img2);

if r1 <> r2 | c1 <> c2 then
    img2 = imresize(img2, [r1, c1]);
end

multiplied_img = img1 .* img2;

img2(img2 == 0) = 1;
divided_img = img1 ./ img2;

figure();
subplot(1, 4, 1);
imshow(img1);
title("Image 1");

subplot(1, 4, 2);
imshow(img2);
title("Image 2");

subplot(1, 4, 3);
imshow(multiplied_img);
title("Image Multiplication Result");

subplot(1, 4, 4);
imshow(divided_img);
title("Image Division Result");
