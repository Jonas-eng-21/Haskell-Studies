{-
Defina uma função que converta uma lista de dígitos (unitários, 0 a 9) em uma outra lista, que é a sua tradução em String. 
Considere um dicionário do tipo: dic_10 = [(0,"zero"), (1,"um"), (2,"dois"), …, (9,"nove")]
-}

dic_10 :: [(Int, String)]
dic_10 = [(0,"zero"), (1,"um"), (2,"dois"), (3,"três"), (4,"quatro"),
          (5,"cinco"), (6,"seis"), (7,"sete"), (8,"oito"), (9,"nove")]

traduzDigito :: Int -> String
traduzDigito d = case lookup d dic_10 of
                   Just palavra -> palavra
                   Nothing -> "inválido"  -- opcional para fora do intervalo

traduzLista :: [Int] -> [String]
traduzLista lista = map traduzDigito lista

{-
EXplicação:
traduzDigito d = case lookup d dic_10 of
                   Just palavra -> palavra
                   Nothing -> "inválido"
lookup d dic_10: procura o número d dentro do dic_10.
Retorna Just "palavra" se encontrar.
Retorna Nothing se não encontrar (por exemplo, lookup 10 dic_10).
case ... of: estrutura de decisão, parecida com if, mas usada com padrões.
Just palavra -> palavra: se encontrou, retorna a palavra (por exemplo, "sete").
Nothing -> "inválido": se não encontrou, retorna "inválido" (evita erro).

traduzLista lista = map traduzDigito lista
map traduzDigito lista aplica a função traduzDigito em cada número da lista.
Exemplo: traduzLista [1, 3, 9] vira:
map traduzDigito [1, 3, 9]
→ ["um", "três", "nove"]
-}