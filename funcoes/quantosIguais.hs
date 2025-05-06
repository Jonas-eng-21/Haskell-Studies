{- Fornecidos três valores a, b e c, escreva uma função que retorne quantos dos três são iguais.
A resposta pode ser 3 (todos iguais), 2 (dois iguais e o terceiro diferente) ou 0 (todos diferentes)-}

quantosIguais :: Eq a => a -> a -> a -> Int
quantosIguais a b c
  | a == b && b == c = 3
  | a == b || a == c || b == c = 2
  | otherwise = 0

{- 
Explicação rápida:
Eq a => significa que os valores precisam ser comparáveis (por exemplo, números ou strings).

a == b && b == c: todos são iguais → retorna 3.

a == b || a == c || b == c: apenas dois são iguais → retorna 2.

otherwise: todos são diferentes → retorna 0.
}