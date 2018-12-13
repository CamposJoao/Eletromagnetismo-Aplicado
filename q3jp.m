%   Questão 3
%   Aluno: João Pedro Silva Campos - 405039
%   Baseado o campo vetorial associados ao campo escalar desenvolvido pelo professor Sergio Antenor
%   de Carvalho

[X,Y] = meshgrid(-4:.4:4);   % gera a grade de pontos - no caso bidimensional
a = 2*Y;                     % definir a
b = 2*X;                     % definir b
c = 4;                       % definir c
DX = a./(X.^2 + Y.^2 + c);   % componente EX do campo vetorial E
DY = b./(X.^2 + Y.^2 + c);   % componente EY do campo vetorial E
hold on
quiver(X,Y,DX,DY)            % plota os vetores (DX,DY) nos pontos (X,Y) no espaço bidimensional
colormap hsv
hold off
pbaspect([1 1 1])