clear all; 
close all;
clc; 

%to execute code, press run

I = imread('img1.jpg');
J = imread('img2.jpg');

t1 = 2;
t2 = 0;
l1 = 5;
l2 = 5;

for t = 1:7
    Z = I.*((t-t2)/l2) + J.*(1-(t-t1)/l1);
    figure;
    imshow(Z);
    imwrite(Z,sprintf('%d.jpg',t))
    
end
