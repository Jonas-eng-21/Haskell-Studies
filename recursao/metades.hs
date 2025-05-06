{-
Usando a função merge, defina a função mergesort :: Ord a => [a] -> [a] que implementa o algoritmo de ordenação merge sort,
que por sua vez considera uma lista vazia e uma lista com apenas um elemento como listas ordenadas,
e que qualquer outra lista é ordenada a partir da união de duas listas que resultaram da ordenação das suas metades separadamente.
 Dica: primeiro implemente a função metades :: [a] -> ([a],[a]) que separa uma lista em duas partes 
 cujos comprimentos são iguais ou no máximo diferem em uma unidade.
-}

-- Função que divide a lista em duas metades
metades :: [elemento] -> ([elemento], [elemento])
metades lista = splitAt (length lista `div` 2) lista

-- Função que une duas listas ordenadas
merge :: Ord elemento => [elemento] -> [elemento] -> [elemento]
merge [] lista = lista
merge lista [] = lista
merge (primeiro1 : resto1) (primeiro2 : resto2)
  | primeiro1 <= primeiro2 = primeiro1 : merge resto1 (primeiro2 : resto2)
  | otherwise              = primeiro2 : merge (primeiro1 : resto1) resto2

-- Função principal de ordenação
mergesort :: Ord elemento => [elemento] -> [elemento]
mergesort [] = []  -- caso base: lista vazia
mergesort [unico] = [unico]  -- caso base: lista com um único elemento
mergesort lista =
  let (parte1, parte2) = metades lista
  in merge (mergesort parte1) (mergesort parte2)


{-
 Explicação:
Se a lista for vazia ou tiver um único elemento, já está ordenada.

Caso contrário:

Divide em duas partes com metades.

Ordena as duas partes separadamente com mergesort.

Junta as partes ordenadas com merge.

Exemplo:
Entrada: mergesort [5, 1, 4, 2]
Passos:
Dividir a lista em duas partes: metades [5, 1, 4, 2] = ([5, 1], [4, 2])
Ordenar cada metade: 

mergesort [5, 1]:
Divide em metades [5, 1] = ([5], [1])
As metades [5] e [1] já estão ordenadas, então aplicamos o merge: merge [5] [1] = [1, 5]
mergesort [4, 2]:
Divide em metades [4, 2] = ([4], [2])
As metades [4] e [2] já estão ordenadas, então aplicamos o merge: merge [4] [2] = [2, 4]

Combinar as listas ordenadas:
Agora, com as listas [1, 5] e [2, 4], fazemos o merge:
merge [1, 5] [2, 4] = [1, 2, 4, 5]

Resultado:
mergesort [5, 1, 4, 2] = [1, 2, 4, 5]

-}