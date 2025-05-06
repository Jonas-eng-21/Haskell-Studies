{-
Mostre que a compreensão de lista [(x,y) | x <- [1,	2], y <- [3,4]], com dois geradores, pode ser representada 
usando duas compreensões de lista, cada uma com apenas um gerador. Dica: Procure usar a função concat. 
-}

concat [[(x, y) | y <- [3, 4]] | x <- [1, 2]]

{-
No caso da compreensão de lista original:
[(x, y) | x <- [1, 2], y <- [3, 4]]
Com dois geradores, ela gera todos os pares (x, y) onde x é de [1, 2] e y é de [3, 4].
O resultado seria:
[(1, 3), (1, 4), (2, 3), (2, 4)]

Agora, a ideia é reescrever essa compreensão de lista com duas compreensões de lista,
cada uma com apenas um gerador, e utilizar a função concat para combinar os resultados.

Passos:
Primeira compreensão: Vamos gerar uma lista de pares (x, y) para cada x em [1, 2].
Segunda compreensão: Para cada valor de x, vamos gerar uma lista dos pares (x, y) para cada y em [3, 4].

A função concat serve para combinar essas listas, já que ela concatena várias listas em uma só.

Podemos reescrever essa compreensão com duas compreensões de lista e a função concat da seguinte maneira:
concat [[(x, y) | y <- [3, 4]] | x <- [1, 2]]

Explicação:
[(x, y) | y <- [3, 4]]: Para cada x, geramos uma lista de pares (x, y) onde y varia de 3 a 4.
concat [[(x, y) | y <- [3, 4]] | x <- [1, 2]]: Para cada x em [1, 2]
aplicamos a compreensão interna, que gera uma lista de pares para y variando de 3 a 4.
A função concat então junta todas essas listas de pares em uma única lista.
-}