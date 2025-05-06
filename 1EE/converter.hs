{-
Crie uma função que converta um quantidade de segundos em uma String
no formato &quot;HH:MM:SS&quot;. O valor máximo possível a ser recebido por essa função é 359999
(&quot;99:59:59&quot;).
Ex: converter 86399 = &quot;23:59:59&quot;
-}

import Text.Printf (printf)

converter :: Int -> String
converter totalSegundos = 
    let horas = totalSegundos `div` 3600
        minutos = (totalSegundos `mod` 3600) `div` 60
        segundos = totalSegundos `mod` 60
    in printf "%02d:%02d:%02d" horas minutos segundos

{-
Para converter uma quantidade de segundos em uma string no formato "HH:MM:SS",
precisamos dividir os segundos da seguinte maneira:

Calcular a quantidade de horas (dividindo os segundos por 3600, que é o número de segundos em uma hora).
Calcular os minutos restantes após determinar as horas (pegando o restante da divisão de segundos por 3600 e dividindo por 60).
Calcular os segundos restantes após determinar os minutos.

Explicação:

totalSegundos div 3600 calcula as horas.

(totalSegundos mod3600)div 60 calcula os minutos restantes após as horas.

totalSegundos mod 60 calcula os segundos restantes.

A função printf é usada para garantir que as horas, minutos e segundos sejam formatados 
com dois dígitos, adicionando um zero à esquerda quando necessário.
-}