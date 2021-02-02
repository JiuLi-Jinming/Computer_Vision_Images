img = imread("Writing_desk.jpg");
figure;
imshow(img);
title(["Writing Desk" "(Q 1.1)"]);
pause(0.5);

painting = img(18:365,100:442,1:3);
figure;
imshow(painting)
title(["Painting part" "(Q 1.2)"]);
pause(0.5)

vase = img(257:485,508:634,1:3);
figure;
imshow(vase)
title(["Vase part" "(Q 1.2)"]);
pause(0.5)

statuettes = img(390:481,110:226,1:3);
figure;
imshow(statuettes)
title(["Statuettes part" "(Q 1.2)"]);
pause(0.5)

painting_r = painting(:,:,1);
painting_g = painting(:,:,2);
painting_b = painting(:,:,3);

vase_r = vase(:,:,1);
vase_g = vase(:,:,2);
vase_b = vase(:,:,3);

statuettes_r = statuettes(:,:,1);
statuettes_g = statuettes(:,:,2);
statuettes_b = statuettes(:,:,3);
figure;
imshow(statuettes_r);
title(["red channle ONLY of statuettes" "(Q 1.3)"]);
pause(0.5)
figure;
imshow(statuettes_g);
title(["green channle ONLY of statuettes" "(Q 1.3)"]);
pause(0.5)
figure;
imshow(statuettes_b);
title(["blue channle ONLY of statuettes" "(Q 1.3)"]);
pause(0.5)

Gray =  R*0.299 + G*0.587 + B*0.114;
statuettes_gray = uint8(uint16(statuettes_r)*0.299 + uint16(statuettes_g)*0.587 + uint16(statuettes_b)*0.114);
figure;
imshow(statuettes_gray);
title(["statuettes greyscale img" "(Q 1.4)"]);
pause(0.5);

figure;
imshow(statuettes_gray);
colormap('jet');
title(["statuettes greyscale img with jet" "(Q 1.4)"]);
pause(0.5);

figure;
imshow(statuettes_gray);
colormap('hsv');
title(["statuettes greyscale img with hsv" "(Q 1.4)"]);
pause(0.5);

painting_b2r = painting_b;
painting_r2g = painting_r;
painting_g2b = painting_g;
painting_new = painting;
painting_new(:,:,1) = painting_b2r;
painting_new(:,:,2) = painting_r2g;
painting_new(:,:,3) = painting_g2b;
figure;
imshow(painting_new);
title(["new style painting img" "(Q 1.5)"]);

