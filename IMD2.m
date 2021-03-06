%%Test Data 2
Current=[1.3 1.3 2.6 2.7 2.7 3.1 4.1 4.2 4.2  4.3 4.3];
M=[37.3 37.6 38 37.4 37.6 37.7 38.4 38.5 39.3 38.6 38.8];
hold on
figure(14)
h14=plot(Current,M),grid on,xlabel('Current(A)','FontWeight','bold'),ylabel('Magnetic Field Strength(\muT)','FontWeight','bold'),title('Magnetic Field Strength vs. Current Characterictics','FontWeight','bold'),legend('Second Set of Data')
set([h13], 'Parent',get(h14,'Parent'))