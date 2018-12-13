%   Questão 2
%   Aluno: João Pedro Silva Campos - 405039
%   Utilizando as rotinas VetCilRet e CooCilRet com mudanças na
%   multiplicação, logo onde tinha * modifiquei para .* 
[r,f,z] = meshgrid(.1:.1:.6,0:.1:pi/6,0); % Determina a grade de pontos
Ar = 0;             % Componente em r
Af = 1./r*850/pi;   % Componente em f 
Az=0;               % Componente em z

[X,Y,z,Ax,Ay,Az] = VetCilRet(r,f,z,Dr,Df,Dz);
z = 850*f/pi; %Determina o campo escalar.
hold on
quiver(X,Y,Ax,Ay); % plota os vetores (DX,DY) nos pontos (X,Y) no espaço bidimensional 
colormap hsv
[X,Y,Z] = CooCilRet(r,f,z); %Converte os resultados para coordenadas retangulares.
contour(X,Y,Z);
