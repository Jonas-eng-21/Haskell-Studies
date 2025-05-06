{-
Implemente uma função que descomprima o texto resultante da função anterior. ( comprime.hs)
-}

import Data.Char (isDigit, digitToInt)

descomprime :: String -> String
descomprime [] = []
descomprime ('!':xs) = replicate n c ++ descomprime rest
  where
    (numStr, c:rest) = span isDigit xs
    n = read numStr
descomprime (x:xs) = x : descomprime xs

{-
Explicação passo a passo:

import Data.Char (isDigit, digitToInt)
isDigit verifica se um caractere é um número.
read transforma "42" em 42.

descomprime :: String -> String
Assinatura da função: recebe uma String, devolve a String descomprimida.

descomprime [] = []
Se a String estiver vazia, retorna uma String vazia.

descomprime ('!':xs) = replicate n c ++ descomprime rest
Se o primeiro caractere for '!':

Lemos o número de repetições n
Pegamos o caractere c
Repetimos c n vezes com replicate n c
Continuamos processando o resto da string (rest)

  where
    (numStr, c:rest) = span isDigit xs
    n = read numStr
span percorre a string xs da esquerda pra direita enquanto a condição for verdadeira.
Aqui a condição é isDigit, ou seja: “enquanto for um dígito (0–9)”.

(numStr, c:rest) = ...
Estamos extraindo 3 coisas ao mesmo tempo:
numStr → String com o número (ex: "42")
c → o caractere que vem logo após o número (ex: 'f')
rest → o restante da string depois do caractere (ex: "abc")

-}