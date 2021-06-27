[filename,pathname] = uigetfile('*.*','Select the input Audio');
[x,Fs] = audioread(num2str(filename));
xn=awgn(x,15,'measured');
xden = wden(xn,'sqtwolog','s','mln',3,'sym8');
subplot (3,1,1)
plot(x);
title('Original signal');
subplot(3,1,2)
plot(xn,'r');
title('Noisy signal');
subplot(3,1,3)
plot(xden,'g');
title('Denoised signal');