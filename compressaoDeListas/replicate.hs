{-
De maneira similar à função length, mostre como a função replicate :: Int -> a -> [a] 
que produz uma lista de elementos idênticos pode ser definida usando compreensão de listas. Exemplo:
> replicate 3 True
[True, True, True]
-}

myReplicate :: Int -> a -> [a]
myReplicate n x = [x | _ <- [1..n]]

{-
Explicação:
n: O número de vezes que o elemento x deve aparecer na lista.

x: O elemento que será repetido na lista.

Compreensão de listas: [x | _ <- [1..n]] cria uma lista de tamanho n, onde o valor de x é repetido.
A parte _ <- [1..n] significa que estamos iterando n vezes,
mas não estamos usando a variável de iteração (por isso o uso de _).
-}