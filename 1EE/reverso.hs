{-
Implemente a função reverso :: [a] -&gt; [a], que inverte a ordem dos
elementos de uma lista. OBS: Não é permitido usar a função reverse da biblioteca padrão.
Ex: reverso &quot;abc&quot;
Main&gt; &quot;cba&quot;
-}

reverso :: [a] -> [a]
reverso [] = []  -- Caso base: a lista vazia já está invertida
reverso (x:xs) = reverso xs ++ [x]  -- Inverte o resto da lista e coloca o primeiro elemento no final

{-
Para implementar a função reverso, podemos usar uma abordagem recursiva.
A ideia é pegar o primeiro elemento da lista, chamar a função recursivamente para o restante da lista
e depois adicionar esse primeiro elemento ao final da lista invertida. Aqui está a implementação

Se a lista estiver vazia ([]), a inversão de uma lista vazia é ela mesma, então retornamos [].

Se a lista não for vazia, fazemos a inversão do restante da lista (xs) e, em seguida,
adicionamos o primeiro elemento (x) no final da lista invertida.
-}