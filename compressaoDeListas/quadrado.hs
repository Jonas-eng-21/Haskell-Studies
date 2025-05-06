{-
Usando compreensão de listas e a função grid definida na questão anterior (grid.hs)
 defina uma função quadrado :: Int -> [(Int,Int)] que retorna um plano de coordenadas quadrado de tamanho n, 
excluindo a diagonal principal (0,0) a (n,n). Por exemplo:
> quadrado 2
[(0,1), (0,2), (1,0), (1,2), (2,0), (2,1)]
-}

grid :: Int -> Int -> [(Int, Int)]
grid m n = [(x, y) | x <- [0..m], y <- [0..n]]

quadrado :: Int -> [(Int, Int)]
quadrado n = [(x, y) | (x, y) <- grid n n, x /= y]



{-
Explicação:
🔹 grid n n
Gera todos os pares (x, y) de 0 até n em ambos os eixos.
🔹 x /= y
Remove os pontos da diagonal principal, que são os pontos onde a coordenada x é igual a y:
(0,0), (1,1), (2,2), ..., (n,n)

A função quadrado usa a função grid para gerar todas as coordenadas em um grid de tamanho n por n, 
mas depois filtra as coordenadas onde x == y (diagonal principal), removendo essas coordenadas.

[(x, y) | (x, y) <- grid n n, x /= y]: Aqui, você gera uma lista de tuplas (x, y) da função grid n n,
mas exclui as tuplas onde x é igual a y (ou seja, as coordenadas da diagonal principal).
-}