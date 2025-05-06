{-
Defina as funções abaixo usando recursão:
Decidir se todos os valores em uma lista são True:
and :: [Bool] -> Bool
Concatenar uma lista de listas:
concat :: [[a]] -> [a]
Produzir uma lista com n elementos idênticos:
replicate :: Int -> a -> [a]
Selecionar o n-ésimo elemento em uma lista:
(!!) :: [a] -> Int -> a
Decidir se um valor está presente em uma lista:
elem :: Eq a => a -> [a] -> Bool
-}

-- 1 and :: [Bool] -> Bool
and :: [Bool] -> Bool
and [] = True
and (primeiro : resto) = primeiro && and resto

{-
Explicação:

Se a lista for vazia, consideramos que todos os valores são True (caso neutro).

Caso contrário, o resultado depende do primeiro elemento e do resultado da chamada recursiva.
-}

--2 concat :: [[a]] -> [a]

concat :: [[elemento]] -> [elemento]
concat [] = []
concat (primeira : resto) = primeira ++ concat resto

{-
Explicação:

Se não houver mais listas, retorna lista vazia.

Junta a primeira sublista com a concatenação do resto.
-}

--3 replicate :: Int -> a -> [a]

replicate :: Int -> valor -> [valor]
replicate quantidade item
  | quantidade <= 0 = []
  | otherwise       = item : replicate (quantidade - 1) item

{-
Explicação:

Se a quantidade for zero ou negativa, retorna lista vazia.

Caso contrário, adiciona o item e chama novamente com quantidade diminuída.
-}

--4 (!!) :: [a] -> Int -> a
(!!) :: [elemento] -> Int -> elemento
(primeiro : _) !! 0 = primeiro
(_ : resto)   !! indice = resto !! (indice - 1)

{-
Se o índice não for zero, ignoramos o primeiro elemento (_) e continuamos procurando no resto da lista.

Reduzimos o índice em 1 a cada passo até chegar em zero.
Seleciona o elemento no índice dado (começando do zero).
Observação: essa função assume que o índice está dentro dos limites da lista.
-}


--5 elem :: Eq a => a -> [a] -> Bool
elem :: Eq valor => valor -> [valor] -> Bool
elem _ [] = False
elem alvo (primeiro : resto)
  | alvo == primeiro = True
  | otherwise        = elem alvo resto

{-
Explicação:

Se a lista estiver vazia, o elemento não foi encontrado.

Se o elemento atual for igual ao alvo, retorna True.

Caso contrário, continua procurando.
-}