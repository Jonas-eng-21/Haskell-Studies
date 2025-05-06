{-
Dadas duas listas ordenadas como entrada, faça uma função merge, que une as duas listas
-}

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

{-
Explicação passo a passo:

merge :: Ord a => [a] -> [a] -> [a]
Define a função merge para listas de elementos comparáveis (Ord a).
Recebe duas listas [a] e retorna uma lista [a].

merge [] ys = ys
Se a primeira lista estiver vazia, retorna a segunda.

merge xs [] = xs
Se a segunda lista estiver vazia, retorna a primeira.

Como a função merge ordena as listas?
merge (x:xs) (y:ys)
  | x <= y    = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys
Em Haskell, otherwise é apenas um nome que representa o valor lógico True.
Compara os primeiros elementos de ambas as listas.
O menor vai para o início da nova lista.

A função continua com o restante das listas.

Isso significa:
Se x (o primeiro elemento da primeira lista) for menor ou igual a y, ele vai primeiro.
Depois, continua com xs (restante da primeira lista) e a lista completa (y:ys)
Caso contrário (ou seja, x > y), y vem primeiro.
Depois, continua com (x:xs) e ys.

ex.: merge [1,3,5] [2,4,6]
Passo a passo:

1 <= 2 → pega o 1:
→ 1 : merge [3,5] [2,4,6]

3 > 2 → pega o 2:
→ 1 : 2 : merge [3,5] [4,6]

3 <= 4 → pega o 3:
→ 1 : 2 : 3 : merge [5] [4,6]

5 > 4 → pega o 4:
→ 1 : 2 : 3 : 4 : merge [5] [6]

5 <= 6 → pega o 5:
→ 1 : 2 : 3 : 4 : 5 : merge [] [6]

Primeira lista vazia → retorna [6]

-}