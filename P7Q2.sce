clc;
close();

x = imread('C:\Users\Shreyas\Downloads\Ham44.jpg');
x = rgb2gray(x);
y = double(x);
[m,n] = size(y);

L = max(y);
a = round(L / 2);
b = L;

z = zeros(m, n);

for i = 1:m
    for j = 1:n
        if (y(i,j) >= a & y(i,j) <= b) then
            z(i,j) = L;
        else
            z(i,j) = 0;
        end
    end
end

z = uint8(z);

figure(1);
imshow(x);
title('Original Image');

figure(2);
imshow(z);
title('Gray Level Slicing without Preserving Background');
