-- Dados dois números n1 e n2, encontrar os múltiplos de n3 que se encontram no  intervalo [n1,n2] (inclusivo).

multiplosNoIntervalo :: Int -> Int -> Int -> [Int]
multiplosNoIntervalo n1 n2 n3 = [x | x <- [n1..n2], x `mod` n3 == 0]

{-
Explicação rápida:
[x | x <- [n1..n2], ...]: cria uma lista com os números de n1 até n2.
[x | x <- [n1..n2]]: Essa é a forma básica de gerar listas com uma regra. ( “A lista de todos os x, onde x vem de [n1..n2].”)
x <- [n1..n2] → significa: "pegue cada valor x da lista de n1 até n2".

[x | x <- [n1..n2], x mod n3 == 0]: A lista de todos os x entre n1 e n2, onde x é divisível por n3.

Aqui usamos uma condição (filtro) para escolher apenas os elementos que queremos.
mod é o operador de resto da divisão inteira.
x `mod` n3 == 0 → significa: "x é divisível por n3".
Ou seja, o resto da divisão de x por n3 é igual a 0.
-}