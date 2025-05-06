{-
Usando compreensão de listas, forneça uma expressão que calcula a soma 1² +2²+...+100² dos quadrados 
dos primeiros 100 números inteiros.

-}

sum [x^2 | x <- [1..100]]

{-
[x^2 | x <- [1..100]]
Cria uma lista com os quadrados de 1 até 100:
[1^2, 2^2, 3^2, ..., 100^2]

sum [...]
Soma todos os elementos da lista:
[1^2 + 2^2 + 3^2 + ... + 100^2]
-}