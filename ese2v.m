
% CALCOLO DI B NEL PIANO x-y, FILO RETTILINEO LUNGO Z

close all; clear all; clc

% SORGENTE

H=0; %altezza rispetto al suolo (m)

ys=H;
xs=0; 
I=500; 

%PIANO DI OSSERVAZIONE
xp=-50:1:50; % da - 50 a 50 con passo 1
yp=-40:1:40;

%passo importante per passare ad un piano. Xp vettore unidimensionale. Yp idem
[Xp Yp]=meshgrid(xp,yp); 

R=sqrt((Xp-xs).^2+(Yp-ys).^2);

%GRANDEZZE ELETTROMAGNETICHE
mu0=4*pi*1e-7;
B=mu0*I./(2*pi*R);

figure
surf(xp,yp,10^6*abs(B))
xlabel('x (m)')
ylabel('y (m)')
zlabel('B in \mu T')

figure
[c h]=contour(xp,yp,10^6*abs(B),[100 10 3]) 
clabel(c,h);
xlabel('x (m)')
ylabel('y (m)')
grid





