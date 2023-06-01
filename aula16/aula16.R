# 1 [0,02 pontos]) Desenvolva um script em R que declare 3 variáveis quaisquer e implemente uma expressão que utilize ao menos 3 operações básicas de soma, subtração, multiplicação, divisão, exponenciação ou resto.
n1 <- 9
n2 <- 8
n3 <- 7

media <- ((n1+n2)/2) * 0.4 + n3*0.6
print(media)

#2 [0,03 pontos]) Desenvolva um script em R que carregue o dataset de NetFlix Titles (netflix_titles01.csv) e apresente uma sumarização (summary) dos filmes no dataset.

setwd('~/ipbg123/aula16')
df <- read.csv('netflix_titles01.csv', header=TRUE, stringsAsFactors = TRUE)
summary(df)
str(df)

#3 [0,05 pontos]) Crie um vetor de inteiros em R com números entre 13 e 131.

v13_131 = c(13:131)
print(v13_131)

#4 [0,05 pontos]) Crie um vetor de inteiros  em R com os números entre 36 e 360 com cada elemento repetido 2 vezes.
v36_360 = seq(from=36, to=360, by=2)
print(v36_360)

#5 [0,05 pontos]) Crie um vetor em R com os 5 primeiros números primos e posteriormente eleve cada elemento na potência de 5.
n_primo <- c(2,3,5,7,11) ** 5 
print(n_primo)

--
  
eh_primo <- function(num){
  if (num < 2){
    return (FALSE)
  }
  
  divisor <- 2 
  last_num <- sqrt(num)
  
  while (divisor <= last_num){
    if (num %% divisor == 0){
      return (FALSE)
    }
    divisor <- divisor + 1
  }
  
  return (TRUE)
}
  
calcular_primos <- function(qtde_primos){
  primos <- c()
  num_candidato <- 2 
  
  while (length(primos) < qtde_primos){
    if (eh_primo(num_candidato)){
      primos <- c(primos, num_candidato)
    }
    
    num_candidato <- num_candidato + 1
  }
  
  return (primos)
}

print( calcular_primos(5) ** 2)

#6 [0,05 pontos]) Apresente um vetor de inteiros em R com números entre 1000 e 2000 com os números de forma decrescente, ou seja, na primeira posição do vetor deve-se ter o número 2000 e na última o 1000.

print(c(2000:1000))
print( rev(c(1000:2000)))

reverso <- function(num_inicial, num_final){
  c_reverso <- c()
  
  num_inicial <- num_inicial - 1
  
  while (num_final > num_inicial){
    c_reverso <- c(c_reverso, num_final)
    
    num_final <- num_final - 1
  }
  
  return (c_reverso)
}

print( reverso(1000, 2000))

#7 [0,05 pontos]) Desenvolva um fator (factor) em R ordenado de categorias de futebol: Sub-17, Sub-20, Adulto e Vetereno.

cat_futebol <- factor( c("Sub-20", "Sub-20", "Vetereno", "Adulto", "Sub-17"),
                       levels = c("Sub-17", "Sub-20", "Adulto", "Vetereno"))
#str(cat_futebol)
factor(cat_futebol)

-- 
cat_futebol <- factor( c("Sub-20", "Sub-20", "Vetereno", 
                        "Adulto", "Sub-17"))
#str(cat_futebol)
factor(cat_futebol)

#8 [0,05 pontos]) Crie uma lista em R que contenha ao menos 3 elementos com tipos de dados distintos.

lista <- list(18, c(1,2,3), "IPBG")
print(lista)

#9 [0,05 pontos]) Desenvolva uma matriz em R de quarta ordem quadrada (4 x 4) preenchida com números sequenciais únicos.
matriz <- matrix(data = 1:16, nrow = 4, ncol = 4, byrow = FALSE)

print(matriz)

#10 [0,05 pontos]) Crie um data frame em R que armazene 5 músicas contendo o nome da música e banda.

df <- data.frame(nome = c("M1", "M2", "M3", "M4", "M5"), 
                 banda = c("B1", "B2", "B3", "B4", "B5"))
print(df)
str(df)

#11) O dataset "netflix_titles01.csv" possui vários problemas que precisam ser corrigidos. Corrija os problemas listados abaixo no dataset.

setwd('~/ipbg123/aula16')
df <- read.csv('netflix_titles01.csv', header=TRUE, stringsAsFactors = TRUE)

#11.1 [0,025 pontos]) Remova as colunas sem nome e valores.
summary(df)
str(df)
df <- df[,-c(2,5,10)]
summary(df)

#11.2 [0,025 pontos]) A coluna "type" possui fatores que deveriam ser agrupados por erro de digitação.
levels(df$type)
df$type[which(df$type == "Movies")] <- "Movie"
df$type[which(df$type == "TV Shows")] <- "TV Show"
df$type <- factor(df$type)
levels(df$type)

#11.3 [0,05 pontos]) Uma das colunas/medidas esta com valor claramente incorreto (acima ou abaixo).
summary(df)
df$release_year[which.max(df$release_year)] <- 2015
summary(df)

#11.4 [0,05 pontos]) Remova as linhas duplicadas.
df[which(duplicated(df)),]
df <- unique(df)
row.names(df) <- 1:nrow(df)

#12  [0,08 pontos]) Utilizando o dataset  "snail_feeding01.csv" gere 2 gráficos utilizando o R Base a sua escolha (histograma, gráfico de dispersão, diagrama de caixa, gráfico de barra e/ou coluna, gráfico de pontos ou gráfico de pizza) utilizando qualquer coluna (math score,   reading score ou  writing score) de sua escolha do dataset em anexo inserindo os gráficos em uma única página;
setwd('~/ipbg123/aula16')
df <- read.csv('snail_feeding01.csv', header=TRUE, stringsAsFactors = TRUE)

par(mfrow=c(2,1))
hist(df$Temp)
plot(Depth ~ Temp, data = df)

#13 [0,12 pontos]) Faça uma função que receba como parâmetro um dataframe carregado e/ou corrigido do dataset "snail_feeding01.csv" e retorne os dados que estão no intervalo de temperaturas (Temp) passados também como parâmetros. Demonstre o uso da função desenvolvida.
#Assinatura típica da função:   filtro_temperatura <- function( snail_feeding, temp_ini, temp_fim)

filtro_temperatura <- function( snail_feeding, temp_ini, temp_fim){
  return (subset(snail_feeding, Temp >= temp_ini & Temp <= temp_fim))
}

print( filtro_temperatura(df, 18, 19))
  
#14 [0,20 pontos]) Existe uma relação entre a temperatura (Temp) com a distância (Distance) e profundidade (Depth)? Você pode prever a temperatura (Temp) dada a distância (Distance) e profundidade (Depth)?
#Utilizando regressão linear do R project destaque nos resultados obtidos da análise de regressão, assim como, se existe ou não uma relação na regressão calculada. Também deve-se entregar a fórmula final de regressão para prever a temperatura (Temp) dada a distância (Distance) e profundidade (Depth).

str(df)
rl <- lm(Temp ~ Distance + Depth, data = df)
summary(rl)

# Fórmula
# Temp(Distance, Depth) = 19.453086 + (0.065824 * Distance) + (0.002708 * Depth)


