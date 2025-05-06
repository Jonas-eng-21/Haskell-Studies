{-
Defina a função euclides :: Int -> Int -> Int que implementa o algoritmo de Euclides para calcular o máximo divisor comum 
de dois inteiros não-negativos: se dois números são iguais, este número é o resultado; caso contrário, 
o menor número é subtraído do maior e o processo é repetido passando este novo número e o menor valor passado anteriormente
como argumento. Exemplo:
> euclides 6 27
3

-}

euclides :: Int -> Int -> Int
euclides primeiro segundo
  | primeiro == segundo = primeiro
  | primeiro > segundo  = euclides (primeiro - segundo) segundo
  | otherwise           = euclides primeiro (segundo - primeiro)

{-

Explicação:
Caso base: se os dois valores forem iguais, esse número é o máximo divisor comum.

Se primeiro for maior: subtrai o segundo do primeiro e chama novamente.

Se segundo for maior: subtrai o primeiro do segundo e chama novamente.

Exemplo:

euclides 6 27
-- euclides 6 (27 - 6) = euclides 6 21
-- euclides 6 (21 - 6) = euclides 6 15
-- euclides 6 (15 - 6) = euclides 6 9
-- euclides 6 (9 - 6)  = euclides 6 3
-- euclides (6 - 3) 3  = euclides 3 3
-- resultado: 3


-}