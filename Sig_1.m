load wnoisydata; %data is time table type of format
xnn=table2array(wnoisydata);
xn=xnn(:,1);

xden=wden(xn,'sqtwolog','s','mln',5,'sym8');
h1= plot([xn xden]);
h1(2).LineWidth=2;
legend('Original Signal','Denoised Signal')