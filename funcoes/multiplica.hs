-- Utilizando a função sum, faça uma função que calcule a multiplicação entre dois números quaisquer
-- considerando números positivos e negativos.

multiplica :: Int -> Int -> Int
multiplica a b = sinal * sum (replicate (abs b) (abs a))
  where
    sinal = if (a < 0) `xor` (b < 0) then -1 else 1
    xor x y = (x || y) && not (x && y)

{-
Explicação rápida:
replicate n x cria uma lista com x repetido n vezes.
abs garante que usamos apenas números positivos para a repetição.
sum soma os elementos da lista. (simula multiplicação.)
O sinal ajusta o resultado final para negativo se somente um dos dois for negativo.
Usamos uma função auxiliar xor para isso. 
Usamos xor aqui para detectar se os sinais de a e b são diferentes, e assim decidir se o resultado final precisa ser negativo.

(a < 0) xor (b < 0)
Se apenas um dos dois for negativo → retorna True → o resultado precisa ser negativo
Se ambos forem negativos ou ambos positivos → retorna False → o resultado é positivo

O que é XOR?
O operador XOR (exclusive or) retorna:
True se exatamente um dos valores é True.
False se ambos forem iguais (ambos True ou ambos False).
ex.: xor x y = (x || y) && not (x && y)

(x || y) → True se pelo menos um for True.
(x && y) → True se ambos forem True.
not (x && y) → True se não forem ambos verdadeiros.
O resultado final só será True se: Um for True e o outro for False.
( Ou seja: "um ou outro, mas não os dois" → isso é XOR )
-}