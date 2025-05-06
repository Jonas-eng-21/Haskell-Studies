{-
Implementar a fórmula que indica de quantas maneiras é possível escolher n objetos de uma coleção original de m objetos
onde m >= n.
-}

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

combinacao :: Integer -> Integer -> Integer
combinacao m n
  | m >= n    = fatorial m `div` (fatorial n * fatorial (m - n))
  | otherwise = error "m deve ser maior ou igual a n"

{-
EXPLICAÇÃO:
O que a função calcula?
A função combinacao m n calcula de quantas maneiras diferentes você pode escolher n objetos 
a partir de um total de m, sem se importar com a ordem.
Ex.:
Imagine que você tem m pessoas e quer escolher n delas para formar um grupo.
Exemplo: Você tem 5 pessoas (A, B, C, D, E) e quer escolher 2.
As combinações possíveis são:
AB, AC, AD, AE
BC, BD, BE
CD, CE
DE
Total: 10 maneiras → isso é C(5, 2) = 10

fatorial m = m!
fatorial n = n!
fatorial (m - n) = (m - n)!

m! → todas as formas de organizar os m elementos
n! → remove as repetições por ordem entre os elementos escolhidos
(m - n)! → remove as repetições entre os que não foram escolhidos

A função usa divisão inteira div para garantir resultado correto

fatorial é definido recursivamente: n! = n * (n - 1)!
combinacao m n aplica diretamente a fórmula da combinação
Usamos div para divisão inteira, já que o resultado de uma combinação sempre é inteiro
O guard (| m >= n) garante que o domínio da função seja respeitado
-}