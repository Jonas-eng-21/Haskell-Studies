{-
Reutilizando a função potencia_2, construir uma função potencia_4 que retorne o seu argumento elevado à quarta potência.
-}

potenciaDois :: Num a => a -> a
potenciaDois x = x * x

potenciaQuatro :: Num a => a -> a
potenciaQuatro x = potenciaDois (potenciaDois x)

{-
Explicação breve:
potencia_2 x calcula x².
potencia_4 x chama potencia_2 duas vezes:
-}