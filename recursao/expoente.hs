{-
Defina o operador de exponenciação ^ utilizando uma função recursiva, semelhante ao padrão usado
para implementar a multiplicação com o operador *:
(*) :: Num a => a -> a -> a
m * 0 = 0
m * n = m + (m * (n - 1))

-}

potencia :: (Num valor, Integral expoente) => valor -> expoente -> valor
potencia base expoente
  | expoente < 0  = error "Expoente negativo não suportado"
  | expoente == 0 = 1
  | otherwise     = base * potencia base (expoente - 1)


{-
Explicação:
expoente < 0: Essa versão não lida com expoentes negativos (como é comum na definição básica do operador ^ em Haskell).

expoente == 0: Qualquer número elevado a 0 é 1.

otherwise: Multiplica a base pela chamada recursiva com expoente - 1.
Exemplo:
2 ^ 3
-- 2 * (2 ^ 2)
-- 2 * (2 * (2 ^ 1))
-- 2 * (2 * (2 * (2 ^ 0)))
-- 2 * (2 * (2 * 1)) = 8

-}