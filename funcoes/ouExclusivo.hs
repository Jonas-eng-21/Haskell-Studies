{-
Implemente em Haskell a função do ou-exclusivo, que é dada por:
O OU-exclusivo entre dois valores a e b é igual ao resultado do OU entre a e b, E ao mesmo tempo à negação do resultado do E entre a e b.
Ou seja:
"a OU b" E "NÃO (a E b)"

-}

ouExclusivo :: Bool -> Bool -> Bool
ouExclusivo a b = (a || b) && not (a && b)

{-
Primeiro, fazemos a OU b → isso retorna True se pelo menos um dos dois for True.
Depois, fazemos a E b → isso retorna True somente se os dois forem True.
Aplicamos a negação: NÃO (a E b) → isso será True se pelo menos um deles for False.
Por fim, unimos os dois resultados com um E: (a OU b) E NÃO(a E b)

Entendendo com exemplos:
Exemplo 1: ouExclusivo True False → True
a || b = True || False = True
a && b = True && False = False
not (a && b) = not False = True
Resultado: True && True = True ✅

Exemplo 2: ouExclusivo True True → False
a || b = True || True = True
a && b = True && True = True
not (a && b) = not True = False
Resultado: True && False = False ✅
-}