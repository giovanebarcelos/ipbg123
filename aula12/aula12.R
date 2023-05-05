#1) Algoritmo para calcular a média de um vetor.
media <- function(vetor){
  soma <- 0 
  tamanho_vetor <- length(vetor)
  
  for (posicao in 1:tamanho_vetor){
    soma <- soma + vetor[posicao]
  }
  
  return(soma/tamanho_vetor)
}

media(c(5,7,13,8,9))

#2) Algoritmo para verificar se uma string é um palíndromo.
eh_palindromo <- function(string){
  string_reversa <- paste(
            rev(strsplit(string,"")[[1]]), collapse = "")
  
  return (string == string_reversa)
}

ds_palindromo = c("131", "sala", "renner", "muttley")

for (posicao in 1:length(ds_palindromo)){
  palavra <- ds_palindromo[posicao]
  print(paste(palavra, 
              ifelse(eh_palindromo(palavra), 
                     "é", "não é"), "palindromo"))
}

string <- "1234"
string <- unlist(strsplit(string,""))
string[1]

#3) Algoritmo para calcular a sequência de Fibonacci.

fibonacci <- function( n ){
  fibonacci <- c(0,1)
  
  for (pos in 3:n){
    proximo_fibo <- fibonacci[pos-1] + fibonacci[pos-2]
    fibonacci <- c(fibonacci, proximo_fibo)
  } 
  
  return (fibonacci[1:n] )
}

print(fibonacci(5))
print(fibonacci(1))

#4) Algoritmo para converter uma temperatura em Fahrenheit para Celsius. °C = (°F - 32)/1,8 

fahrenheit_to_celsius <- function( fahrenheit){
  return (round((fahrenheit - 32) / 1.8,0))
}

print(fahrenheit_to_celsius(61))

#5) Algoritmo para calcular o fatorial de um número.

r_fatorial <- function(numero){
  return (ifelse(numero < 2, numero, 
                 numero * r_fatorial(numero-1)))
}

do <- function(){
  fatorial <- function(numero){
    fatorial <- 1
    while (numero > 1){
      fatorial <- fatorial * numero
      numero <- numero - 1 
    }
  
    return (fatorial)
  }
  
  numero <- as.integer(
    readline(prompt = "Digite um número: ") )

  print(paste("O fatorial do número", numero, "é",
              fatorial(numero)))
  print(paste("O fatorial do número", numero, "é",
              r_fatorial(numero)))
}

do()

#6) Algoritmo para verificar se um número é primo.
eh_primo <- function( numero ){
  if (numero <= 1){
    return (FALSE)
  }
  
  for (i in 2:sqrt(numero)){
    if (numero %% i == 0){
      return (FALSE)
    }
  }
  
  return (TRUE)
}

numeros = c(1,3,12,13,18,23,454325)

for (posicao in 1:length(numeros)){
  numero <- numeros[posicao]
  print(paste("Número", numero, 
              ifelse(eh_primo(numero), 
                     "é", "não é"), "primo"))
}
  
#7) Algoritmo para calcular o quadrado de um número.
do <- function(){
  quadrado <- function(numero){
    return (numero * numero)
  }

  numero <- as.integer(
               readline(prompt = "Digite um número: "))
  print(quadrado(numero))
}

do()

#8) Algoritmo para calcular a média de um vetor.

#9) Algoritmo para calcular a mediana de um vetor.

mediana <- function(vetor){
  vetor_ordenado <- sort(vetor)
  
  tamanho <- length(vetor)
  
  if (tamanho %% 2 == 0){
    return (( vetor_ordenado[tamanho/2] +
              vetor_ordenado[tamanho/2 + 1]) / 2)
  } else { 
    return ( vetor_ordenado[(tamanho+1)/2])
  }
}

mediana(c(1,2,3,4,5))
median(c(1,2,3,4,5))
mediana(c(1,2,3,4))
median(c(1,2,3,4))

#10) Algoritmo para calcular a raiz quadrada de um número.

raiz_quadrada <- function( numero ){
  return (numero ^ (1/2))
}

raiz_quadrada(25)
print(sqrt(25))

#11) Algoritmo para calcular a área de um triângulo.

area_triangulo <- function( base, altura) {
  return (base * altura / 2)
}

print( area_triangulo(3,4) )

#12) Algoritmo para calcular o valor absoluto de um número.

absoluto <- function(numero){
  return ( ifelse(numero<0, -numero, numero))
}

absoluto(5)
abs(-5)

#13) Algoritmo para calcular a distância entre dois pontos no plano cartesiano usando a fórmula de distância euclidiana (distância = √((x2 - x1)² + (y2 - y1)²)).

#14) Algoritmo para calcular a área de um círculo (área = π * raio²).

#15) Algoritmo para verificar se um número é positivo, negativo ou zero.

#16) Algoritmo para calcular a potência de um número.

potencia <- function( base, expoente){
  resultado <- 1
  for (i in 1:expoente){
    resultado <- resultado * base
  }
  
  return (resultado)
}

print(2 ^ 3)
print(potencia(2,3))

#17) Algoritmo para encontrar o número mínimo e máximo em um vetor.

#18) Algoritmo para encontrar o segundo maior número em um vetor.

#19) Algoritmo para calcular a média ponderada de um vetor.

#20) Função para verificar se um número é par.

#21) Função para calcular a média de um vetor.

#22) Função para calcular a soma dos números de 1 a n.

#23) Função para encontrar o maior número em um vetor.

#24) Algoritmo para calcular o máximo divisor comum entre dois números usando o algoritmo de Euclides que divide o maior número pelo menor número, em seguida, divide o divisor pelo resto da primeira divisão e continua essa sequência de divisões até que o resto seja igual a zero.

#25) Algoritmo para encontrar os números primos de 1 a n.