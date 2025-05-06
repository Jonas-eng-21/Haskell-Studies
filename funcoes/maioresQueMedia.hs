maioresQueMedia :: (Ord a, Fractional a) => a -> a -> a -> Int
maioresQueMedia a b c = length (filter (> media) [a, b, c])
  where media = (a + b + c) / 3

{-
Fornecidos três valores a, b e c, elaborar uma função que retorne quantos desses três valores são maiores que a média entre eles.

Explicação passo a passo:
(Ord a, Fractional a) diz que o tipo a precisa permitir comparação (Ord) e divisão (Fractional).

media calcula a média dos três.

[a, b, c] cria uma lista com os três valores.

filter (> media) pega só os que são maiores que a média.

length conta quantos elementos passaram no filtro.
-}