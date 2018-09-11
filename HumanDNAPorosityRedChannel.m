%%%%%%%%%%%% Setting up the source image %%%%%%%%%%%%%%%%%%
thr_img=100;   % threshold in pixels for red channel
scale_img=0.25; % micron/pixel as determined from the image scale
[img,map] = imread('Experiment_ Jurkat DNA15 ugml_2 um cPSL_3 mM KHP_1014_ch00_mod.png'); % Please input the image name details
I = imread('Experiment_ Jurkat DNA15 ugml_2 um cPSL_3 mM KHP_1014_ch00_mod.png'); % Please input the image name details
size_img=size(img);
imshow('Experiment_ Jurkat DNA15 ugml_2 um cPSL_3 mM KHP_1014_ch00_mod.png') %Optional

%%%%%%%%%%%% Plotting the detected pixels along a line to check response %%%%%%%%%%%%%%%%%%
pixel_line=zeros(size_img(2),1); %Defining pixel_line array with # of elements equal to image size and of order 1
pixel_line = transpose(img(100,:,1)); %arbitrarily choosing 100th row of the pixeleted image as well as R or '1' of the image vector
plot(pixel_line)


%%%%%%%%%%%% Calculating ring thickness along the line %%%%%%%%%%%%%%%%%%
count = 0;
for i = 1:size_img(2)
    if img(100,i,1)> thr_img
        count = count + 1; %counting the pixel numbers with values > 100
    end
end
thickness_img=count*scale_img %ring thickness in microns

%%%%%%%%%%%% Selecting a region of interest (ROI) from the image for analysis %%%%%%%%%%%%%%%%%%
h = imrect;
position = wait(h); % Please select a rectangular/ Square ROI across the peripheral ring from the image and double click on it
croppedImage = imcrop(I, [position]); % Actual internal formatting is imcrop (I, [x1,x2,y1,y2])
imshow(croppedImage)
imwrite(croppedImage,'C:\Users\Rajarshi\Desktop\DNA Analysis for Cancer Detection_GitHub\croppedHumanJurkatDNA.jpg')

%%%%%%%%%%%% Finding the pixel counts in ROI %%%%%%%%%%%%%%%%%%
[img_crop, map]= imread('croppedHumanJurkatDNA.jpg');
size_img_crop=size(img_crop);

count_particlepixel = 0;
count_totalpixel = 0;
for i = 1:size_img_crop(1)
    for j = 1:size_img_crop(2)
        if(img_crop(i,j,1))> thr_img
        count_particlepixel = count_particlepixel + 1; %counting the pixel numbers with values > 100
        end
         count_totalpixel = count_totalpixel + 1;
    end
end

%%%%%%%%%%%% Calculation of 2D porosity %%%%%%%%%%%%%%%%%%
porosity2D = 1- count_particlepixel/count_totalpixel;
disp('2D porosity of the ring=')
disp(porosity2D)