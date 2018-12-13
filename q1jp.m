%   Questão 1 gráfico de campo escalar e campo vetorial usando as
%   funções gradient e quiver do Matlab. 
%   Aluno: João Pedro Silva Campos - 405039
%   Baseado no exemplo para plotar as superfícies equipotenciais e o campo vetorial
%   associados ao campo escalar desenvolvido pelo professor Sergio Antenor
%   de Carvalho

[X,Y] = meshgrid(-1:.09:1);  % gera a grade de pontos - no caso bidimensional
a = 2;                       % definir a
b = 3;                       % definir b
c = X;                       % definir c
d = 2;                       % definir d
Z = (c+d)*exp(a*X.^2 + b*Y.^2);% função que define o campo escalar, usa a grade definida pela meshgrid 
[DX,DY] = gradient(Z,.2,.2); % calcula as componentes do campo vetorial associado ao campo escalar 
contour(X,Y,Z)               % determina as linhas equipotenciais associadas ca campo escalar e plota
hold on
DX = -1.*DX;                 % troca o sinal para calcular E - - grad fi
DY = -1.*DY;                 % troca o sinal para calcular E - - grad fi
quiver(X,Y,DX,DY)            % plota os vetores (DX,DY) nos pontos (X,Y) no espaço bidimensional 
colormap hsv
hold off