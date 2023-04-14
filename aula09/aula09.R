# 1 [0,055 pontos]) Desenvolva um script em R que declare 3 variáveis quaisquer e implemente uma expressão que utilize ao menos 3 operações básicas de soma, subtração, multiplicação, divisão, exponenciação ou resto.

nota1 = 9 
nota2 <- 8
nota3 <- 7

notaFinal = (((nota1+nota2)/2*0.4) + (nota3 * 0.6))

print(notaFinal)

# 2 [0,055 pontos]) Desenvolva um script em R que carregue o dataset de NetFlix Titles (netflix_titles01.csv)

setwd('~/ipbg123/aula09')
netflix_titles <- read.csv('netflix_titles01.csv', header = TRUE, stringsAsFactors = TRUE)
summary(netflix_titles)
                                                                  
# 3 [0,055 pontos]) Crie um vetor de inteiros em R com números entre 13 e 131.
vetor <- c(13:131)
head(vetor)
tail(vetor)

# 4 [0,055 pontos]) Crie um vetor de inteiros  em R com os números entre 36 e 360 com cada elemento repetido 2 vezes.
vetor <- rep( seq(36, 360, by = 1), each = 2)
print(vetor)

# 5 [0,055 pontos]) Crie um vetor em R com os 5 primeiros números primos e posteriormente eleve cada elemento na potência de 5.

primos = c(2,3,5,7,11) ** 5
primos = c(2,3,5,7,11) ^ 5
print(primos)

# 6 [0,055 pontos]) Apresente um vetor de inteiros em R com números entre 1000 e 2000 com os números de forma decrescente, ou seja, na primeira posição do vetor deve-se ter o número 2000 e na última o 1000.
c(2000:1000)
rev( c(1000:2000) )

# 7 [0,055 pontos]) Desenvolva um fator (factor) em R ordenado de categorias de futebol: Sub-17, Sub-20, Adulto e Vetereno.

categorias <- factor(c('Vetereno', 'Veterano', 'Sub-17', 'Adulto', 'Adulto', 'Sub-20'), 
                     levels = c('Sub-17', 'Sub-20', 'Adulto', 'Vetereno'))
str(categorias)
levels(categorias)

# 8 [0,055 pontos]) Crie uma lista em R que contenha ao menos 3 elementos com tipos de dados distintos.

lista <- list(13, c("Olá", "Mundo"), c(TRUE, FALSE, TRUE))
print(lista)

# 9 [0,055 pontos]) Desenvolva uma matriz em R de quarta ordem quadrada (4 x 4) preenchida com números sequenciais únicos.

matriz <- matrix(data = 10:25, nrow = 4, ncol = 4, byrow=FALSE)
print(matriz)

# 10 [0,055 pontos]) Crie um data frame em R que armazene 5 músicas contendo o nome da música e banda.
df = data.frame( nome_musica = c('A', 'B', 'C' , 'D', 'E'), 
                 banda = c('F', 'G', 'H', 'I', 'J') )
str(df)
df

# 11) O dataset "netflix_titles01.csv" possui vários problemas que precisam ser corrigidos.
# Corrija os problemas listados abaixo no dataset.

# 11.2 [0,055 pontos]) A coluna "type" possui fatores que deveriam ser agrupados por erro de digitação

summary(netflix_titles)
levels(netflix_titles$type)
netflix_titles$type[ which(netflix_titles$type == 'Movies')] <- 'Movie'
netflix_titles$type[ which(netflix_titles$type == 'TV Shows')] <- 'TV Show'
netflix_titles$type <- factor(netflix_titles$type)
levels(netflix_titles$type)
unique(netflix_titles$type)

# 11.3 [0,055 pontos]) Uma das colunas/medidas esta com valor claramente incorreto (acima ou abaixo)
summary(netflix_titles)
netflix_titles$release_year[which.max(netflix_titles$release_year)] <- 2015

# 11.4 [0,055 pontos]) Tem linhas duplicadas
sum( duplicated(netflix_titles) )
netflix_titles <- unique(netflix_titles)
row.names(netflix_titles) <- 1:nrow(netflix_titles)

# 12) Utilizando o dataset "snail_feeding01.csv" desenvolva as tarefas descritas abaixo:
  
# 12.1 [0,055 pontos]) Gere 2 gráficos utilizando o R Base a sua escolha (histograma, gráfico de dispersão, diagrama de caixa, gráfico de barra e/ou coluna, gráfico de pontos ou gráfico de pizza) utilizando qualquer coluna (math score,   reading score ou  writing score) de sua escolha do dataset em anexo inserindo os gráficos em uma única página;

setwd('~/ipbg123/aula09')
df_snail <- read.csv('snail_feeding01.csv', header = TRUE, stringsAsFactors = TRUE)
par(mfrow = c(1,2))
hist(df_snail$Temp)
plot(Depth ~ Temp, data=df_snail)

# 12.2 [0,055 pontos]) Gere 2 gráficos utilizando o ggplot2 a sua escolha (histograma, gráfico de dispersão, diagrama de caixa, gráfico de barra e/ou coluna, gráfico de pontos ou gráfico de pizza) utilizando qualquer coluna de sua escolha do dataset em anexo  inserindo os gráficos em uma única página;

install.packages('gridExtra')
library(ggplot2)
library(gridExtra)
p1 <- ggplot(df_snail, aes(Temp)) + geom_histogram(col='blue')
p2 <- ggplot(df_snail, aes(x = Temp, y = Depth)) + geom_point()
grid.arrange(p1, p2, ncol=2, nrow=1)

# 12.3 [0,055 pontos]) Acrescente ao menos 3 configurações (rótulos de título, eixo, limites dos eixos, cores, aparência geral com temas, tamanho do texto ou legenda) em um gráfico de sua escolha

ggplot(df_snail, aes(Temp)) +
       geom_histogram(col='blue') + 
       xlab('Temperatura') + 
       ylab('Frequência') + 
       ggtitle('Histograma da Temperatura')
         

