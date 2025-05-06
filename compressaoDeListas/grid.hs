{-
Suponha que um plano de coordenadas de tamanho m x n é dado pela lista de todos os pares (x,y) de inteiros 
tal que 0  x  m e 0 y n. Usando compreensão de listas, defina a função grid :: Int -> Int -> [(Int,Int)] 
que retorna o plano de coordenadas de um dado tamanho. Por exemplo:
> grid 1 2
[(0,0), (0,1), (0,2), (1,0), (1,1), (1,2)]

-}

grid :: Int -> Int -> [(Int, Int)]
grid m n = [(x, y) | x <- [0..m], y <- [0..n]]

{-
O que o problema está pedindo?
Gerar todas as coordenadas inteiras (x, y) em um plano cartesiano com:
x variando de 0 até m
y variando de 0 até n
Ou seja: construir uma malha de pontos (x, y).

Interpretação geométrica
Imagine um plano cartesiano com eixos x e y.
Para cada valor de x de 0 a m, temos uma coluna vertical de pontos.
E para cada x, queremos todos os valores de y de 0 a n, formando os pares:
(x, 0), (x, 1), ..., (x, n)

Quantos pontos existem?
Se m = 1 e n = 2, por exemplo:
x = 0 → y = 0, 1, 2 → (0,0), (0,1), (0,2)
x = 1 → y = 0, 1, 2 → (1,0), (1,1), (1,2)

🔢 Total de pontos: (m + 1) × (n + 1)
→ pois estamos incluindo o 0 também!

Como a compreensão de listas resolve isso?
[(x, y) | x <- [0..m], y <- [0..n]]

Para cada valor de x (de 0 até m)
gera todos os valores possíveis de y (de 0 até n)
e monta o par (x, y)
Isso é equivalente a fazer um duplo “for” (externo em x, interno em y), como em outras linguagens.
-}