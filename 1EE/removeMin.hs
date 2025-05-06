{-
Crie uma função que remove o menor elemento de uma lista. Caso este
elemento apareça mais de uma vez na lista, remova apenas a primeira ocorrência.
Ex: removeMin [4,5,6,4,7] = [5,6,4,7]
-}

import Data.List (delete)

removeMin :: Ord a => [a] -> [a]
removeMin [] = []  -- Caso base: lista vazia não tem elementos para remover
removeMin xs = delete (minimum xs) xs  -- Remove a primeira ocorrência do menor elemento

{-
Para implementar a função removeMin, que remove o menor elemento de uma lista, podemos seguir os seguintes passos:

Encontrar o menor elemento da lista usando a função minimum.

Remover a primeira ocorrência desse menor elemento utilizando a função delete da biblioteca Data.List.

Explicação:
A função minimum xs encontra o menor valor da lista xs.

A função delete remove a primeira ocorrência do valor fornecido (neste caso, o menor valor) da lista.

O tipo Ord a => é necessário para que possamos usar a função minimum, que exige que os elementos sejam comparáveis.
-}