# Demonstração de Algoritmo

verifica_temperatura <- function() {
  temperatura <- as.double(readline(prompt = "Digite a temperatura da água: "))

  if (temperatura <= 0.0){
    "É um gelo."
  } else {
    if (temperatura < 100.0) {
      "É um líquido."
    } else { 
      "É vapor."
    }
  }
}

verifica_temperatura()

# 1) Escreva um algoritmo em R para calcular a média de um vetor de números.
vetor <- 1:30 
media <- mean(vetor)
print(media)

# 3) Escreva um algoritmo em R para calcular a moda de um vetor de números.
vetor <- c(2,2,3,4,4,4,4,5,6)
moda <- names(sort(table(vetor), decreasing = TRUE))[1]
print(moda)

#12) Escreva um algoritmo em R para verificar se um número é par ou ímpar.
par_impar <- function() {
  numero <- as.integer(readline(prompt = "Digite um número: "))
  
  if (numero %% 2 == 0){
    print('Número par')
  } else {
    print('Número impar')
  }
  
  print( ifelse(numero %% 2 == 0, 'Número par', 'Número impar') )
}

par_impar()

'''
  14) Crie um data frame com os dados fornecidos abaixo:
  
  df_students = data.frame(
    name = c("Monica", "Penélope", "Muttley", "Medinho"),
    sex = c("f", "f", "m", "m"),
    years = c(21,31,29,19));
  
  df_students
  
  Use uma instrução simples 'ifelse' para adicionar uma nova coluna 'male.teen' ao quadro de dados. Esta é uma coluna booleana, indicando T se a observação se trata de um homem com menos de 20 anos.
  
  Resultado esperado:
    name  sex   years  male.teen
  1 Sue      f        21          F
  2 Eva      f        31          F
  3 Henry  m      29          F
  4 Jan      m      19          T
'''

df_students = data.frame(
      name = c("Monica", "Penélope", "Muttley", "Medinho"),
      sex = c("f", "f", "m", "m"),
      years = c(21,31,29,19));
  
df_students

df_students$male.teen = 
  ifelse(df_students$sex == "m" & df_students$years < 20, 'T', 'F')

df_students

# 19) Escreva um algoritmo em R que verifica se um ano é bissexto ou não.

verifica_ano_bissexto <- function() {
  ano <- as.integer(readline(prompt = "Digite um ano: "))
  
  if (ano %% 400 == 0 | ( ano %% 4 == 0 & ano %% 100 != 0)){
    print('Ano Bissexto')
  } else {
    print('Ano não é bissexto')
  }
}

verifica_ano_bissexto()

#21) Escreva um algoritmo em R que calcula a soma dos primeiros 10 números naturais usando o comando for.

soma_numeros_naturais <- function() {
  soma <- 0 
  for (numero in 1:10) {
    soma <- soma + numero
  }
  print(soma)
}

soma_numeros_naturais()

# ------------------

soma_numeros_naturais <- function() {
  soma <- 0 
  numero <- 1
  while (numero < 11){
    soma <- soma + numero
    numero <- numero + 1
  }
  print(soma)
}

soma_numeros_naturais()

# ------------------

soma_numeros_naturais <- function() {
  soma <- 0 
  numero <- 1
  
  repeat {
    soma <- soma + numero
    numero <- numero + 1
    
    if (numero > 10){
      break
    }
  }
  print(soma)
}

soma_numeros_naturais()

#22) Escreva um algoritmo em R que calcula o fatorial de um número usando o comando while.

calculo_fatorial <- function() {
  numero <- as.integer(readline(prompt = "Digite um numero para fatorar: "))
  
  fatorial <- 1

  while (numero > 0){
    fatorial <- fatorial * numero
    numero <- numero - 1
  }
  print(fatorial)
}

calculo_fatorial()

------------
calculo_fatorial <- function() {
    numero <- as.integer(readline(prompt = "Digite um numero para fatorar: "))
    
    fatorial <- 1
    
    for (fator in 1:numero){
      fatorial <- fatorial * fator
    }
    print(fatorial)
}

calculo_fatorial()
  
#25) Escreva um algoritmo em R que calcula a média de um vetor de números usando o comando while.

media_vetor <- function() {
  vetor <- c(3,4,7,10,13,73,96,111)

  posicao <- length(vetor)
  soma <- 0

  while (posicao > 0){
    soma <- soma + vetor[posicao]
    posicao <- posicao - 1
  }

  media <- soma / length(vetor)
  print(media)

  print(mean(vetor))
}

media_vetor()

#27) Escreva um algoritmo em R que calcula o produto dos números ímpares entre 1 e 10 usando o comando for.

produto_1_10 <- function() { 
  produto <- 1 
  
  for (numero in 1:10){
    if (numero %% 2 != 0){
      produto <- produto * numero
    }
  }
  
  print(produto)
}

produto_1_10()

# 29) Escreva um algoritmo em R que calcula o máximo de um vetor de números usando o comando while.

max_vetor <- function() { 
  vetor <- c(300,3,4,7,10,600,13,73,96,111)
  
  posicao <- length(vetor)
  
  maximo <- vetor[1]
  while (posicao > 1){
    if (vetor[posicao] > maximo){
      maximo <- vetor[posicao]
    }
    posicao <- posicao - 1
  }
  
  print(maximo)
}

max_vetor()

'''
R003) Você esta fazendo uma pesquisa entre os habitantes de uma pequena vila. Escreva um algoritmo que colete os dados de idade, sexo (M/F) e salário de todos as pessoas que desejam participar da pesquisa (para encerrar a entrada de dados entre a idade menor ou igual a zero). Após coletar todos os dados informe:
a. A média de salário do grupo
b. Maior e menor idade do grupo
c. A percentagem do total de mulheres com salário até R$ 2000,00
d. A quantidade de homens
'''

survey <- function() {
  pesquisa <- data.frame("Idade"=as.integer(character(0)), 
                         "Sexo"=character(0),
                         "Salario"=as.numeric(character(0)),
                         stringsAsFactors = FALSE)

  repeat {
    idade <- as.integer(readline(prompt = "Qual é a tua idade? "))
  
    if (idade <= 0 ){
      break
    }
  
    sexo <- toupper(readline(prompt = "Qual é o teu sexo (M/F)? "))
    salario <- as.numeric(readline(prompt = "Salário? "))
  
    pesquisa[nrow(pesquisa) + 1, ] = list(Idade=idade, Sexo=sexo, Salario=salario)
    print(paste(replicate(30, '-'), collapse = ""))
  }
  
  print(pesquisa)
  
  print('Estatísticas\n')
  print(paste('a. Média de salário do grupo : ', round(mean(pesquisa$Salario),2)))
  print(paste('b1. Menor do grupo: ', min(pesquisa$Idade)))
  print(paste('b2. Maior do grupo: ', max(pesquisa$Idade)))
  print(paste('c. A percentagem do total de mulheres com salário até R$ 2000,00: ',
        round(nrow(filter(pesquisa, Sexo=="F" & Salario <= 2000)) /  
              nrow(filter(pesquisa, Sexo=="F"))*100, '%'),2))
  print(paste('d. A quantidade de homens', nrow(filter(pesquisa, Sexo=="M"))))
  
}

survey()

'''
R010 Faça um programa que leia um valor inteiro n e mostre os n primeiros números e seus quadrados.
Exemplo: n = 3, então apresentará 1, 4, 9.
'''

quadrado <- function() { 
  numero <- as.integer(readline(prompt = "Digite um número: "))

  for (num in 1:numero){
    print(num ^ 2)
  }
}

quadrado()
