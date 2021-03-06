clc;
clear all;
close all;
V1=61.7;%Voc%
V2=[61.4 60.9 60.9 60.8 60.7 60.6 60.6 60.5 60.4 60.4 60.4 60.3 60.3 60.2]; %Vt%
x=V1-V2;
I=[2.06 2.25 2.35 2.63 2.95 3.12 3.31 3.85 4.05 4.25 4.44 4.59  4.98 5.48];
[a y] = lineReg(I, x);
eqn = sprintf('V_{oc}-V_{t}= %.4f*Battery Current + %.4f', a, y);
hold on
plot(I,x,'*','LineWidth',2);
plot(I, a.*I+y,'LineWidth',2),xlabel('Battery Current (A)','FontWeight','bold'),ylabel('V_{oc}-V_{t}(V)','FontWeight','bold'),set(gca,'FontWeight','bold'), title('SOC=83.38%','FontWeight','bold'), grid on;
annotation('textbox', [.6 .2 .25 .1], 'String', ...
                    ['R_{internal} =',num2str(0.2720),'\Omega'],'BackgroundColor','white','FontWeight','bold'),
                annotation('textbox', [.15 .81 .5 .1],'String',[eqn],'FontWeight','bold','BackgroundColor','white');
legend('Raw','Fitted')
hold off