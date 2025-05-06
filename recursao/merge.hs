{-
Definir a função recursiva merge :: Ord a => [a] -> [a] -> [a] que une duas listas ordenadas em uma lista ordenada. Exemplo:
> merge [2,5,6] [1,3,4]
[1,2,3,4,5,6]
-}

merge :: Ord elemento => [elemento] -> [elemento] -> [elemento]
merge [] lista = lista
merge lista [] = lista
merge (primeiro1 : resto1) (primeiro2 : resto2)
  | primeiro1 <= primeiro2 = primeiro1 : merge resto1 (primeiro2 : resto2)
  | otherwise              = primeiro2 : merge (primeiro1 : resto1) resto2

{-
Explicação passo a passo:
Caso base 1: se a primeira lista estiver vazia, retorna a segunda.

Caso base 2: se a segunda lista estiver vazia, retorna a primeira.

Caso recursivo:

Compara os primeiros elementos das duas listas.

Coloca o menor deles no início da lista resultante.

Chama recursivamente merge para o restante.
-}