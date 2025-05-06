{-
Implemente recursivamente funções que:
selecione o último elemento de uma lista não-vazia.
-}

ultimo :: [a] -> a
ultimo [ultimoElemento] = ultimoElemento  -- caso base: lista com 1 elemento, retorna o único elemento
ultimo (_ : resto) = ultimo resto  -- recursão: ignora o primeiro e chama a função no resto

{-
Explicação:

Se a lista tem apenas um elemento ([ultimoElemento]), esse é o último elemento, então retornamos ele.

Caso contrário, descartamos o primeiro elemento e chamamos ultimo recursivamente no resto da lista.
-}