{-
Escrever duas funções, x_maior que retorne o maior e x_menor que retorne o menor valor real
das raízes de uma equação do segundo grau. A expressão genérica é dada por uma euqação do segundo grau:
ax2 + bx + c = 0
-}

x_maior :: Float -> Float -> Float -> Float
x_maior a b c = (-b + sqrt (b^2 - 4*a*c)) / (2*a)

x_menor :: Float -> Float -> Float -> Float
x_menor a b c = (-b - sqrt (b^2 - 4*a*c)) / (2*a)

{-
Explicação rápida:
a, b, e c são os coeficientes da equação.

b^2 - 4*a*c é o discriminante.

sqrt calcula a raiz quadrada.

O x_maior usa o + e o x_menor usa o -.
-}