-- Criar funções que calculam a soma dos números entre n1 e n2, incluindo e excluindo os limites.

somaIncluindo :: Int -> Int -> Int
somaIncluindo n1 n2 = sum [n1..n2]

somaExcluindo :: Int -> Int -> Int
somaExcluindo n1 n2 = sum [(n1 + 1)..(n2 - 1)]

{-
Explicação rápida:
[n1..n2] cria uma lista de inteiros de n1 até n2.

sum soma os elementos da lista.

Para excluir os limites, começamos de n1 + 1 e vamos até n2 - 1.

[(n1 + 1)..(n2 - 1)]
Essa é uma lista por intervalo em Haskell. Ela gera todos os números entre (n1 + 1) e (n2 - 1).
Se n1 = 3 e n2 = 7, então: [(n1 + 1)..(n2 - 1)] = [4..6] = [4, 5, 6]
Ou seja:

n1 + 1 → exclui o limite inferior (3)
n2 - 1 → exclui o limite superior (7)
-}