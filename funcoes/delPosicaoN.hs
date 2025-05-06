{-
Construa uma função del_posicao_n :: [Int] -> Int -> [Int] em que dada uma lista de inteiros 
e a posição de um elemento qualquer, retorne uma nova lista sem aquele elemento da n-ésima posição.
-}

del_posicao_n :: [Int] -> Int -> [Int]
del_posicao_n xs n = take n xs ++ drop (n+1) xs

{-
take n xs: pega os n primeiros elementos da lista.

drop (n+1) xs: ignora os n+1 primeiros (ou seja, pula o elemento n).

++: junta essas duas partes, removendo o elemento xs !! n.
-}