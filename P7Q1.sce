clc;
close();

a = imread('C:\Users\Shreyas\Downloads\Ham44.jpg');
a = rgb2gray(a);
[m, n] = size(a);

t = input('Enter threshold parameter: ');
b = zeros(m, n);

for i = 1:m 
    for j = 1:n 
        if a(i,j) < t then
            b(i,j) = 0; 
        else  
            b(i,j) = 255; 
        end
    end
end

figure(1);
imshow(a);
title('Original Image');

figure(2);
imshow(uint8(b));
title('Threshold Image');
xlabel(sprintf('Threshold Value is %g', t));
