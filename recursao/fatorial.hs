{-
Como a versão recursiva da função fatorial se comporta se dermos a ela como argumento um número negativo?
Modifique a implementação clássica para não permitir números negativos adicionando uma guarda ao passo recursivo.
-}

fatorial :: Int -> Int
fatorial n
  | n < 0     = error "O fatorial não é definido para números negativos"
  | n == 0    = 1
  | otherwise = n * fatorial (n - 1)

{-

A versão recursiva clássica da função fatorial em Haskell geralmente é definida da seguinte forma:
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

Se passarmos um número negativo como argumento, essa versão irá continuar decrementando indefinidamente,
causando um erro de stack overflow ou uma execução infinita, porque a condição base (quando n == 0) nunca será alcançada.

Modificando a implementação para lidar com números negativos:
Vamos adicionar uma guarda para garantir que números negativos não sejam aceitos.
Se o número for negativo, retornaremos um valor indicativo de erro (como -1 ou uma mensagem, dependendo do que preferirmos).

Explicação:
fatorial n | n < 0: Se o número for negativo, a função retorna um erro com a mensagem 
"O fatorial não é definido para números negativos".

fatorial n | n == 0: O caso base, quando o número é 0, retorna 1.

fatorial n | otherwise: Para números positivos, a função faz a recursão normal,
multiplicando o número atual por fatorial (n - 1) até atingir o caso base.

-}