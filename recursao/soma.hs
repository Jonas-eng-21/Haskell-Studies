{-
Implemente recursivamente funções que:
calcule a soma de uma lista de inteiros;
-}

soma :: [Int] -> Int
soma [] = 0  -- caso base: soma de lista vazia é 0
soma (primeiro : resto) = primeiro + soma resto  -- recursão: soma do primeiro + soma do resto

{-
Explicação:

Se a lista for vazia ([]), a soma é 0.

Caso contrário, pegamos o primeiro elemento da lista (primeiro)
e somamos com a soma do restante da lista (resto), que é calculada recursivamente.
-}