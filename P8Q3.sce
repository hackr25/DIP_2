close ;
clc ;
a = imread('C:\Users\Shreyas\Downloads\Ham44.jpg');     //select your image path
a = rgb2gray(a);
c = edge(a,'sobel');
d = edge(a,'prewitt');
e = edge(a,'log');
f = edge (a,'canny');
imshow(a)
title('Original Image')
figure
imshow(c)
title('Sobel')
figure
imshow(d)
title('prewitt')
figure
imshow(e)
title('Log')
figure
imshow(f)
title('Canny')
