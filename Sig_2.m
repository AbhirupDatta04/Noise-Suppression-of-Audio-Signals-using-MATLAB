load noisdopp
xden=wdenoise(noisdopp,5);
h1=plot([noisdopp' xden']);
h2(2).LineWidth=2;
legend('Original Signal','Denoised Signal')