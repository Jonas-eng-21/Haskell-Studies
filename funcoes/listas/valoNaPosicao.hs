--Defina uma função que retorne o valor da n-ésima posição de uma lista.

valor_na_posicao :: [a] -> Int -> a
valor_na_posicao xs n = xs !! n

{-
valor_na_posicao :: [a] -> Int -> a
A função recebe:
Uma lista genérica [a] (pode ser lista de Int, Char, etc.)
Um índice (Int)
Retorna o elemento da posição n.

valor_na_posicao xs n = xs !! n
Usa o operador !! que acessa o elemento da posição n na lista xs.
O operador !! em Haskell é usado para acessar um elemento em uma posição específica de uma lista.
-}