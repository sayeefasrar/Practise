Speed=[23.77 47.19 49.58 50.46 51.02]; 
Magnetic_field=[37.6 32.9 31.7 32.9 29.2];

hold on;
figure(8)
h8=plot(Speed,Magnetic_field,'black'),grid on,xlabel('Speed(Km/h)','FontWeight','bold'),ylabel('Magnetic Field Strength(\muT)','FontWeight','bold'),title('Speed vs. Magnetic Field Strength Characterictics while Acceleration','FontWeight','bold'),legend('Second Data Set')