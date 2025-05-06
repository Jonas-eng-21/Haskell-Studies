# Haskell-Studies
Repositório de anotações, exercícios e experimentos feitos durante meus estudos em Haskell. Foco em programação funcional com explicações curtas e didáticas para revisão.
---
*Anotações:*

Assinatura de tipo da função: **Ela diz qual tipo de dado a função recebe e retorna. Vamos por partes:**  
Ex.:    
```
quantosIguais :: Eq a => a -> a -> a -> Int
quantosIguais a b c
  | a == b && b == c = 3
  | a == b || a == c || b == c = 2
  | otherwise = 0
```
<mark>quantosIguais :: Eq a => a -> a -> a -> Int</mark>  
Começa declarando que estamos falando da função quantosIguais ( quantosIguais :: )  
  
📌<mark>Eq a =></mark>  
Isso significa:  
**“o tipo <mark>a</mark> precisa pertencer à classe de tipos <mark>Eq</mark>”.**  
👉 <mark>Eq</mark> é uma classe de tipos que permite comparar valores com <mark>==</mark> e <mark>/=</mark>.  
Exemplos de tipos que pertencem a <mark>Eq</mark>: <mark>Int</mark>, <mark>Bool</mark>, <mark>Char</mark>, <mark>String</mark>, etc.  
Sem isso, Haskell não deixaria usar <mark>==</mark> nos valores.  

📌 <mark>a -> a -> a -> Int</mark>  
Significa: a função recebe três argumentos do mesmo tipo <mark>a</mark> e retorna um <mark>Int</mark>.  

Ou seja:  
* Primeiro argumento: <mark>a</mark>
* Segundo argumento: <mark>a</mark>
* Terceiro argumento: <mark>a</mark>    
* Retorno: <mark>Int</mark> (número que representa quantos são iguais)
