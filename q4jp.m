%Questão 4
%Aluno: João Pedro Silva Campos - 405039
%Usando transformações dadas em livros e acrescentando ao modelo usado na
%questão 3
[Y,Z] = meshgrid(-3:.2:3);         % gera a grade de pontos - no caso bidimensional

T = acos(Z./sqrt(Y.^2 + Z.^2));    % calculo do teta
f = pi/2;                          % calculo do fi 
DY = (5*sin(T)*sin(T)*sin(f) + cos(T)*cos(T))./(Z.^2 + Y.^2 + 4); % componente EY do campo vetorial E
DZ = (5*sin(T)*cos(T)*sin(f) - cos(T)*sin(T))./(Z.^2 + Y.^2 + 4); % componente EZ do campo vetorial E
hold on
quiver(Y,Z,DY,DZ); 
colormap hsv
hold off