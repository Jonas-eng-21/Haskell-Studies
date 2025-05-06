{-
Defina a função recursiva somar :: Int -> Int que retorna a soma dos inteiros não-negativos a partir de um valor até zero.
Por exemplo, somar 3 deve retornar 3+2+1+0 = 6.
-}

somar :: Int -> Int
somar valor
  | valor < 0  = error "A função somar não aceita números negativos"
  | valor == 0 = 0
  | otherwise  = valor + somar (valor - 1)

{-

Explicação:

valor < 0: Tratamos a entrada negativa com uma mensagem de erro.

valor == 0: Caso base da recursão, retornamos 0.

otherwise: A função soma o valor atual com o resultado da chamada recursiva para valor - 1.

Exemplo:
somar 3
3 + somar 2

3 + 2 + somar 1

3 + 2 + 1 + somar 0

3 + 2 + 1 + 0 = 6
-}