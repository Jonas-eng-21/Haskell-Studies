{-
Escreva a função capaz de calcular o produto escalar de duas listas de inteiros xs e ys de tamanho n, 
que é dado pelo produto dos inteiros em posições correspondentes
-}

produtoEscalar :: [Int] -> [Int] -> Int
produtoEscalar xs ys = sum [x * y | (x, y) <- zip xs ys]

{-
Produto escalar — definição
Se temos:
xs = [x1, x2, ..., xn]
ys = [y1, y2, ..., yn]
O produto escalar é:
x1*y1 + x2*y2 + ... + xn*yn

zip xs ys:
Junta as duas listas em uma lista de pares: zip [1,2,3] [4,5,6] → [(1,4), (2,5), (3,6)]

List comprehension: [x * y | (x, y) <- zip xs ys]
Multiplica os pares correspondentes:
[(1*4), (2*5), (3*6)] → [4, 10, 18]
sum: Soma tudo:
sum [4, 10, 18] → 32

Passo a passo interno (faça isso no GHCi também se quiser ver "por dentro"):
Passo 1: zipa as listas:
zip [1,2,3] [4,5,6]
-- Resultado: [(1,4), (2,5), (3,6)]

Passo 2: multiplica os pares:
[x * y | (x, y) <- [(1,4), (2,5), (3,6)]]
-- Resultado: [4, 10, 18]

Passo 3: soma os valores:
sum [4, 10, 18]
-- Resultado: 32

-}
