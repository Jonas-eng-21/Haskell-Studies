{-
Crie uma função que faça uma codificação sobre uma sequência de caracteres iguais
substitua a sequência por !na, onde n é o número de vezes que o caractere a é repetido. 
Observe que só devem ser comprimidas sequências de tamanhos maiores que 3. Exemplo:

comprime "asdffffghjjkllllpoooi"
"asd!4fghjjk!4lpoooi"

-}

import Data.List (group)

comprime :: String -> String
comprime xs = concatMap comprimeGrupo (group xs)
  where
    comprimeGrupo g
      | length g > 3 = '!' : show (length g) ++ [head g]
      | otherwise    = g

{-
Etapas do algoritmo:
Agrupar os caracteres iguais que estão em sequência → usamos group da lib Data.List
Para cada grupo:

Se o tamanho for maior que 3 → codifica como "!nX"
Caso contrário → mantém igual
Junta tudo no final

Explicação do código:
import Data.List (group)
Importa a função group que agrupa caracteres iguais consecutivos.
Ex: group "aaabbc" → ["aaa","bb","c"]

Importa a função group que agrupa caracteres iguais consecutivos.
Ex: group "aaabbc" → ["aaa","bb","c"]

comprime xs = concatMap comprimeGrupo (group xs)
Aplica comprimeGrupo para cada grupo de caracteres iguais
Junta tudo no final com concatMap

comprimeGrupo g
  | length g > 3 = '!' : show (length g) ++ [head g]
  | otherwise    = g
Se o grupo for maior que 3 → gera "!nX"
Senão → mantém como está (sem codificar)
Essa linha é a parte do if (guard) que trata grupos com mais de 3 caracteres repetidos. 
Vamos quebrar o que cada função faz:
length retorna o número de elementos de uma lista.
Aqui, g é um grupo de caracteres iguais consecutivos.

head retorna o primeiro elemento da lista.
Como todos os elementos de g são iguais, qualquer um serve.

length g é um número (Int)
show converte esse número para String. ex.: length g = 4 → show 4 = "4"

'!' : → coloca o caractere ! no início
show (length g) → transforma o número de repetições em texto
[head g] → transforma o caractere repetido em uma lista para poder concatenar
-}