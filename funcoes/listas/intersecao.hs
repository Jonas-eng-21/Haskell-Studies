{-
Implemente uma função que receba duas listas de inteiros sem repetição
e retorne uma terceira lista que contenha somente números que estejam nas duas listas dadas.
-}

intersecao :: [Int] -> [Int] -> [Int]
intersecao xs ys = [x | x <- xs, x `elem` ys]

{-
Explicação linha por linha:
intersecao :: [Int] -> [Int] -> [Int]
Define o tipo da função: recebe duas listas de inteiros e retorna uma lista de inteiros.

intersecao xs ys = [x | x <- xs, x `elem` ys]
“Para cada x em xs, se x também estiver em ys, então inclua x na nova lista”.
Usa list comprehension para pegar cada x da primeira lista (xs) que também esteja em ys.
x \elem` ysverifica se o elementoxestá presente na listays`.
x <- xs: "Pegue cada elemento x da lista xs"
x `elem` ys: Verifica se x também está presente na lista ys. ( É uma condição de filtro.)
[x | ...]: Cria uma nova lista com os elementos que atendem à condição.

"[x | x]"
O primeiro x é o que vai para a lista final.
O segundo x é o valor extraído da lista original (xs), que está sendo testado.
-}