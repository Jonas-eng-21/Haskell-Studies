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
--
## Identação do código:  
Ex.:
Cabeçalho da função: euclides :: Int -> Int -> Int
Essa linha declara o tipo da função: ela recebe dois inteiros (Int) e retorna um inteiro (Int). Isso é apenas uma assinatura de tipo.

📌 Definição da função com guardas  
```
euclides primeiro segundo
  | primeiro == segundo = primeiro
  | primeiro > segundo  = euclides (primeiro - segundo) segundo
  | otherwise           = euclides primeiro (segundo - primeiro)

```  

Aqui começa a implementação da função, com uso de guardas (|), que são como condições if.  
Componentes importantes:  
euclides primeiro segundo: aqui você define os nomes dos argumentos (em vez de a, b, etc., você usou primeiro e segundo, o que torna o código mais legível).   
|: essas são guardas, parecidas com if em outras linguagens. Cada guarda é testada em ordem.  
Repare na indentação:  
Todas as guardas estão alinhadas verticalmente sob a definição da função:  
```
euclides primeiro segundo  -- definição
  | condição = resultado   -- alinhado 2 espaços à direita
  | ...      = ...         -- mesma coluna para os próximos

```
Se as guardas estivessem desalinhadas, o compilador Haskell geraria erro. A identação serve para indicar que todas essas condições pertencem ao mesmo nível da definição da função.  

✅ **Por que isso importa?**  
Haskell não usa chaves {} ou palavras como then, endif, etc.. Em vez disso, a indentação indica blocos de código, como no Python. Se você escrever isso assim:  
```
euclides primeiro segundo
| primeiro == segundo = primeiro
| primeiro > segundo = euclides (primeiro - segundo) segundo
| otherwise = euclides primeiro (segundo - primeiro)

```
*Vai gerar erro de sintaxe, porque as guardas não estão devidamente indentadas.*
