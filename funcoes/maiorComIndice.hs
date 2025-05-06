{-
Defina uma função que, dada uma lista numérica, retorne uma tupla
que contenha o maior da lista bem como sua posição relativa.
-}

maiorComIndice :: (Ord a) => [a] -> (a, Int)
maiorComIndice xs = maximumByIndex (zip xs [0..])
  where
    maximumByIndex :: (Ord a) => [(a, Int)] -> (a, Int)
    maximumByIndex = foldl1 (\(v1, i1) (v2, i2) -> if v1 >= v2 then (v1, i1) else (v2, i2))

{-
EXPLICAÇÃO:
maiorComIndice :: (Ord a) => [a] -> (a, Int)
Isso é a assinatura da função. Diz que:
A função maiorComIndice recebe uma lista de qualquer tipo a.
Esse tipo a precisa ser ordenável (Ord a) — ou seja, pode usar > ou <.
Ela retorna uma tupla (a, Int) → o maior valor da lista e sua posição.

maiorComIndice xs = maximumByIndex (zip xs [0..])

xs é a lista de entrada.
zip xs [0..]:
Combina cada elemento da lista com seu índice.
Exemplo: zip [7, 4, 10] [0,1,2] → [(7,0), (4,1), (10,2)]
Resultado: uma lista de tuplas (valor, posição)
Chamamos maximumByIndex para encontrar, entre essas tuplas, a que tem o maior valor.

maximumByIndex :: (Ord a) => [(a, Int)] -> (a, Int)
É a assinatura da função auxiliar maximumByIndex.
Ela recebe uma lista de tuplas (valor, índice) e devolve a tupla com o maior valor.

maximumByIndex = foldl1 (\(v1, i1) (v2, i2) -> if v1 >= v2 then (v1, i1) else (v2, i2))
Vamos quebrar isso:
🧩 foldl1: Essa função reduz a lista de valores para um único valor, aplicando uma operação entre os elementos.
Aqui, está comparando pares (valor, índice).
🧩 A função lambda: \(v1, i1) (v2, i2) -> if v1 >= v2 then (v1, i1) else (v2, i2)
Recebe dois pares: (valor1, índice1) e (valor2, índice2)
Compara os valores (v1 e v2)
Se v1 >= v2, mantém o primeiro
Senão, mantém o segundo
Ou seja: vai passando por cada par e mantendo aquele com o maior valor.

-}