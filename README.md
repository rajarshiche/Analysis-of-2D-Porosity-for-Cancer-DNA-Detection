# Analysis of 2D ring Porosity of Evaporated Droplets of DNA+colloidal Tracers for Cancer DNA Detection 

The matlab code files are HumanDNAPorosityGreenChannel.m and HumanDNAPorosityRedChannel.m

"Experiment_ Jurkat DNA15 ugml_2 um cPSL_3 mM KHP_1014_ch00_mod.png" is a sample image containing ALL (Acute Lymphoblastic Leukaemia) DNA extracted from Jurkat cells. Please import this image in HumanDNAPorosityRedChannel.m by adding proper path and run the interactive program to generate the ROI (Region of Interest) image file "croppedHumanJurkatDNA.jpg". The 2D porosity of the ring would be generated as the output of the program.

"Experiment_m_lambda DNA_0.5 nM_1 um cPSL_10-4 vol fr_2 mM NaCl_1007_ch00.jpg" is a sample image containing methylated bacteriophage lambda DNA. Please import this image in HumanDNAPorosityGreenChannel.m by adding proper path and run the interactive program to generate the ROI image file "croppedlambdaDNAwithNaCl.jpg". The 2D porosity of the ring would be generated as the output of the program.

 Any custom image can be analyzed for porosity/ texture as per examples above. In order to get the right image thresholding values for a particular image, I recommend to use this website to get the RGB values: http://web.stanford.edu/class/cs101/image-rgb-explorer.html
 
 Please cite this publication https://pubs.acs.org/doi/abs/10.1021/acsami.7b13675 if the above analysis/ method is useful
