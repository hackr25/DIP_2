close ;
clear ;
clc ;
a = imread('C:\Users\Shreyas\Downloads\Ham44.jpg');     //select your image path
b = imcreatese('rect',7,7); 
a1 = imopen(a,b);
a2 = imclose(a,b);
figure(1)
imshow(a);
title('Original Image')
figure(2)
imshow(a1);
title('Opening Operation')
figure(3)
imshow(a2);
title('Closing Operation')
