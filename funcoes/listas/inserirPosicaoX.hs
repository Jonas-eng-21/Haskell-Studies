{-
Construa uma função inserir_posicao_x :: [Int] -> Int -> Int -> [Int] em que
dada uma lista de inteiros, uma posição e um elemento a ser inserido
retorne uma nova lista com aquele elemento na n-ésima posição.
-}

inserir_posicao_x :: [Int] -> Int -> Int -> [Int]
inserir_posicao_x xs n x = take n xs ++ [x] ++ drop n xs

{-
inserir_posicao_x :: [Int] -> Int -> Int -> [Int]:

A função recebe:
Uma lista de inteiros [Int]
Uma posição n (Int)
Um valor x a ser inserido (Int)
Retorna uma nova lista [Int] com o elemento x inserido na posição n.

inserir_posicao_x xs n x = take n xs ++ [x] ++ drop n xs:

take n xs: pega os elementos antes da posição n.
[x]: é a lista com o novo elemento.
drop n xs: pega os elementos a partir de n.
-}