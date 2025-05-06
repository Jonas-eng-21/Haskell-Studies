{-
Crie uma função (inclua a definição do seu tipo) que recebe uma lista de
funções e um segundo argumento. Esta função devolve uma lista com todas as funções que ao serem
aplicadas ao argumento retornam False.
Ex: escolheFuncoes [even, odd, (\x -&gt; x `mod` 3 == 0)] 6 = [odd]
-}

escolheFuncoes :: [a -> Bool] -> a -> [a -> Bool]
escolheFuncoes [] _ = []  -- Caso base: lista de funções vazia, retorna lista vazia
escolheFuncoes (f:fs) x
    | f x == False = f : escolheFuncoes fs x  -- Se a função retorna False, inclui na lista
    | otherwise    = escolheFuncoes fs x  -- Caso contrário, vai para a próxima função


{-
A função receberá uma lista de funções (cada uma com o tipo a -> Bool),
e um segundo argumento do tipo a.
Ela deve retornar uma lista de funções que, ao serem aplicadas ao argumento, retornam False.

O tipo da função pode ser definido como:
escolheFuncoes :: [a -> Bool] -> a -> [a -> Bool]

Para resolver isso, vamos aplicar cada função da lista ao argumento e verificar se o resultado é False.
Se for, adicionamos a função à lista de resultados.

Explicação:
escolheFuncoes [] _ = []: Caso base, se a lista de funções estiver vazia, retornamos uma lista vazia.

escolheFuncoes (f:fs) x: Para cada função f na lista, aplicamos f ao argumento x. Se o resultado for False, 
adicionamos f na lista de funções a ser retornada. Caso contrário, passamos para a próxima função (fs).

-}