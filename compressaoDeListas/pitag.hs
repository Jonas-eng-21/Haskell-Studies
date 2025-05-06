{-
Uma tupla (x,y,z) de inteiros positivos é Pitagoreana se satisfaz a equação x² + y² = z².
Usando compreensão de listas com três geradores, defina a função pitag :: Int -> [(Int, Int, Int)]
que retorna uma lista de todas as tuplas que satisfazem a condição estabelecida e cujos componentes
são menores ou iguais a um dado limite. Exemplo: 
> pitag 10
[(3,4,5), (4,3,5), (6,8,10), (8,6,10)]
-}

pitag :: Int -> [(Int, Int, Int)]
pitag limite = [(x, y, z) | x <- [1..limite], y <- [x..limite], z <- [y..limite], x*x + y*y == z*z]

{-

Para resolver esse problema, queremos gerar todas as tuplas (x, y, z) que satisfazem a condição estabelecida:
x*x + y*y == z*z.
Além disso, x, y e z devem ser menores ou iguais a um valor limite dado. Vamos usar uma compreensão de listas com três geradores
para percorrer todos os possíveis valores de x, y e z dentro do limite 
e filtrar as tuplas que satisfazem a condição.

Explicação do código:

Compreensão de listas: A estrutura [x, y, z | ...] permite gerar todas as combinações possíveis de x, y e z.
x <- [1..limite]: Gera todos os valores possíveis para x a partir de 1 até o limite.

y <- [x..limite]: Gera todos os valores possíveis para y mas começando de x ara evitar gerar tuplas duplicadas como (3,4,5) e (4,3,5).
isso também garante que y seja sempre maior ou igual a x. ( x <= y <= z)

z <- [y..limite]: Gera todos os valores possíveis para z, mas começando de y de forma similar ao gerador de y.

Condição x*x + y*y == z*z: Filtra apenas as tuplas que satisfazem a equação de Pitágoras.

ex.: Se chamarmos pitag 10, a função irá gerar todas as tuplas (x, y, z) onde x, y e z estão entre 1 e 10.
e retornar aqueles que satisfazem a condição x*x + y*y == z*z.
O resultado será: [(3,4,5), (4,3,5), (6,8,10), (8,6,10)]

Como funciona:
para x = 3, y = 4 e z = 5, temos 3*3 + 4*4 = 9 + 16 = 25 = 5*5. Então (3,4,5) é uma tupla pitagoreana.
para x = 4, y = 3 e z = 5, temos 4*4 + 3*3 = 16 + 9 = 25 = 5*5. Então (4,3,5) é uma tupla pitagoreana.
o mesmo ocorre para (6,8,10) e (8,6,10).
-}