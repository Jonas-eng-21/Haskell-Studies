{-
Implemente a função mod2, que retorna o resto de uma divisão de inteiros. 
OBS: não é permitido usar a função mod nem a função rem da biblioteca.
-}

mod2 :: Int -> Int -> Int
mod2 a b = a - b * (a `div` b)

{-
EXPLICAÇÃO:
O módulo (resto) da divisão a ÷ b pode ser obtido assim: a = q * b + r
Onde:
q é o quociente (parte inteira da divisão)
r é o resto (o que queremos)

(a `div` b) calcula quantas vezes b cabe dentro de a (ignorando o resto).
Multiplicamos isso por b → dá a parte "exata" da divisão.
Subtraímos isso de a → sobra o resto, que é o que mod faria.
-}