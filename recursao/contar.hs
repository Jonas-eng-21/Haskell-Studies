{-
Implemente recursivamente funções que:
obtenha o número de elementos de uma lista;
-}

contar :: [a] -> Int
contar [] = 0  -- caso base: lista vazia tem 0 elementos
contar (_ : resto) = 1 + contar resto  -- recursão: conta 1 para o primeiro elemento e continua com o resto

{-
Explicação:

Se a lista for vazia ([]), o número de elementos é 0.

Caso contrário, contamos 1 para o primeiro elemento e somamos com a contagem do resto da lista.
-}