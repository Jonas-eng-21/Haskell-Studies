{-
Um inteiro positivo é perfeito se ele é igual à soma de todos os seus fatores,
excluindo o próprio número. Usando compreensão de listas e a função fatores, 
defina a função perfeitos :: Int -> [Int] que retorna a lista de todos os números perfeitos menores
que um limite informado como argumento. Exemplo:
> perfeitos 500
[6, 28, 496]
-}

fatores :: Int -> [Int]
fatores n = [i | i <- [1..n-1], n `mod` i == 0]

perfeitos :: Int -> [Int]
perfeitos limite = [x | x <- [1..limite-1], sum (fatores x) == x]

{-

Para resolver esse problema, vamos dividir a tarefa em duas partes:
Função fatores: Precisamos de uma função que, dado um número n, retorne todos os seus divisores (exceto o próprio número n).

Função perfeitos: Precisamos encontrar todos os números perfeitos menores que um limite L. 
Um número é perfeito se ele for igual à soma de seus divisores (excluindo o próprio número).

A função FATORES deve retornar todos os divisores de um número n, exceto ele mesmo. 
Podemos usar compreensão de listas para encontrar todos os números i tais que i divide n (ou seja, n `mod` i == 0) e i é menor que n.

ex.: [i | i <- [1..n-1], n mod i == 0]: Isso gera uma lista com todos os números i que são divisores de n, excluindo n.

Agora, a função perfeitos vai usar a função fatores para encontrar todos os números perfeitos menores que um dado limite L
Um número x é perfeito se a soma de seus divisores (obtidos pela função fatores) for igual a x

ex.: [x | x <- [1..limite-1], sum (fatores x) == x]: Isso gera uma lista de números x de 1 até limite-1,
onde a soma dos divisores de x (obtidos pela função fatores) é igual a x. Se isso for verdade, x é um número perfeito
e será incluído na lista.

Exemplo:
Se chamarmos perfeitos 500, a função procurará por todos os números perfeitos menores que 500. O resultado será:
[6, 28, 496], pois esses são os únicos números perfeitos menores que 500.

-}