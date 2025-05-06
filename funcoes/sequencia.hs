sequencia :: Int -> Double
sequencia 1 = sqrt 6
sequencia n = sqrt (6 + sequencia (n - 1))

{-
EXPLICAÇÃO:

Caso base: a₁ = sqrt 6
Passo recursivo: aₙ = sqrt (6 + aₙ₋₁)
Usamos Double como tipo de retorno porque estamos lidando com números reais.
-}