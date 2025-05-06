{-
Implemente uma função chamada rotateLeft :: Int -&gt; [a] -&gt; [a], que
rotaciona uma lista para a esquerda uma quantidade n de vezes de acordo com o primeiro parâmetro
da função.
Ex: rotateLeft 2 &quot;abcd&quot;
-}

rotateLeft :: Int -> [a] -> [a]
rotateLeft _ [] = []  -- Lista vazia não precisa de rotação
rotateLeft n xs = let n' = n `mod` length xs  -- Garantir que n não seja maior que o tamanho da lista
                  in drop n' xs ++ take n' xs

{-
Para implementar a função rotateLeft :: Int -> [a] -> [a], que rotaciona uma lista para a esquerda n vezes,
podemos seguir a lógica de pegar os primeiros n elementos da lista, movê-los para o final, 
e depois concatená-los com o restante da lista.

Explicação:
Se a lista estiver vazia ([]), a rotação não é necessária e retornamos uma lista vazia.

n' = n mod length xs é utilizado para garantir que, se n for maior que o tamanho da lista, ele seja ajustado para o tamanho correto (porque rotacionar uma lista de tamanho n vezes é o mesmo que rotacioná-la n' vezes, onde n' = n mod length).

drop n' xs pega todos os elementos da lista xs, exceto os primeiros n'.

take n' xs pega os primeiros n' elementos da lista.

A concatenação de drop n' xs com take n' xs efetua a rotação para a esquerda.
-}