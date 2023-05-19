########################################################
### Regressão Linar
########################################################
#01) Suponha que você tenha um conjunto de dados com duas variáveis, X e Y. Realize uma regressão linear simples para modelar a relação entre X e Y.

df <- data.frame(
  x = c(1,2,3,4,5),
  y = c(3,5,7,9,11)
)

regressao_linear <- lm(y ~ x, data = df)

summary(regressao_linear)

#02) Suponha que você tenha um conjunto de dados com três variáveis, X, Y e Z. Realize uma regressão linear múltipla para modelar a relação entre X, Y e Z.

df <- data.frame(
  x = c(1,2,3,4,5),
  y = c(3,5,7,9,11),
  z = c(2,4,6,8,10)
)

rl <- lm(y ~ x + z, data = df)

summary(rl)

#03) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e várias variáveis independentes (X1, X2, X3, ...). Realize uma regressão linear múltipla para modelar a relação entre as variáveis.

df <- data.frame(Y = c(1,2,3,4,5), 
                 X1 = c(2,4,6,8,10),
                 X2 = c(3,5,7,9,11),
                 X3 = c(4,6,8,10,12))

rl <- lm(Y ~ X1 + X2 + X3, data = df)

summary(rl)

test <- data.frame( X1 = c(30,10,20), 
                    X2 = c(9, 18, 36),
                    X3 = c(1, 5, 9))

predict(rl, newdata = test)

#04) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e faça a previsão de um novo valor de Y para um determinado valor de X.

#05) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e trace um gráfico de dispersão dos dados juntamente com a linha de regressão.

df <- data.frame(
  x = c(1,2,3,4,5),
  y = c(3,5,7,9,11)
)

regressao_linear <- lm(y ~ x, data = df)

plot(df$x, df$y, main = "Regressão Linear", xlab = "X", ylab = "Y")
abline(regressao_linear, col = "blue" )

summary(regressao_linear)

#06) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e calcule o coeficiente de determinação (R²) para avaliar o ajuste do modelo.

#07) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e obtenha os coeficientes da equação da linha de regressão.

#08) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e várias variáveis independentes (X1, X2, X3, ...). Realize uma regressão linear múltipla e obtenha os coeficientes das variáveis independentes juntamente com seus respectivos p-valores.

#09) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e várias variáveis independentes (X1, X2, X3, ...). Realize uma regressão linear múltipla e faça previsões para um conjunto de novos valores das variáveis independentes.

#10) Você tem um conjunto de dados que contém uma variável dependente (Y) e uma variável independente categórica (X). Realize uma regressão linear com codificação de variáveis dummy para incluir a variável categórica no modelo.

#11) Você tem um conjunto de dados com uma variável dependente (Y) e várias variáveis independentes (X1, X2, X3, ...). Realize uma regressão linear múltipla utilizando regularização L1 (lasso) para seleção de variáveis.

#12) Você possui um conjunto de dados com uma variável dependente (Y) e várias variáveis independentes (X1, X2, X3, ...). Realize uma regressão linear múltipla e avalie a normalidade dos resíduos do modelo.

#13) Você tem um conjunto de dados com uma variável dependente (Y) e várias variáveis independentes (X1, X2, X3, ...). Realize uma regressão linear utilizando a técnica de validação cruzada para avaliar o desempenho do modelo.

#14) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e várias variáveis independentes (X1, X2, X3, ...). Realize uma regressão linear múltipla e obtenha as estatísticas de ajuste do modelo, incluindo o coeficiente de determinação (R²) e o erro padrão da estimativa (RMSE).

#15) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e obtenha o intervalo de confiança para o coeficiente da variável independente.

#16) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e trace um gráfico de dispersão dos pontos de dados juntamente com a linha de regressão.

#17) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e várias variáveis independentes (X1, X2, X3, ...). Realize uma regressão linear múltipla e trace um gráfico para visualizar a relação entre a variável dependente e cada variável independente.

#18) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e trace um gráfico de dispersão com a linha de regressão ajustada e os intervalos de confiança.

#19) Você tem um conjunto de dados com uma variável dependente (Y) e várias variáveis independentes (X1, X2, X3, ...). Realize uma regressão linear múltipla e trace um gráfico para visualizar a relação entre a variável dependente e a variável independente principal (X1) com os resíduos.

#20) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e trace um gráfico de dispersão com a linha de regressão ajustada e a previsão para um novo valor de X.

#21) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e trace um gráfico de dispersão com a linha de regressão ajustada, destacando os pontos cujos resíduos estão acima de um determinado limite.

#22) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e trace um gráfico de dispersão com a linha de regressão ajustada e a previsão para um novo valor de X.

#23) Suponha que você tenha um conjunto de dados com uma variável dependente (Y) e uma variável independente (X). Realize uma regressão linear simples e trace um gráfico de dispersão com a linha de regressão ajustada, destacando os pontos cujos resíduos estão acima de um determinado limite.

########################################################
### Bibliotecas
########################################################

#24) Você possui um conjunto de dados e deseja realizar análise exploratória, incluindo estatísticas descritivas e gráficos.

#25) Você deseja realizar um teste de hipótese para comparar as médias de duas amostras independentes.

########################################################
### DBI
########################################################

#26) Escreva um programa em R que utilize a biblioteca R DBI para se conectar a um banco de dados Postgresql e execute uma consulta para recuperar dados de uma tabela específica.

install.packages("DBI")
library(DBI)

host <- "postgresdb"
port <- 5432 
dbname <- "postgres"
user <- "giovane"
password <- "giovane"

conn <- dbConnect(RPostgres::Postgres(), host = host, 
                  port = port, dbname = dbname, 
                  user = user, password = password)

dbSendStatement(conn, "INSERT INTO STUDENT (student_id, name) VALUES (4, 'Medinho')")

dados <- dbGetQuery(conn, "SELECT * FROM STUDENT")

print(dados)

dbDisconnect(conn)

########################################################
### ODBC
########################################################

#27) Escreva um programa em R que utilize a biblioteca R odbc para se conectar a um banco de dados Postgresql e execute uma consulta para recuperar dados de uma tabela específica.

########################################################
### RPostgresql
########################################################

#28) Escreva um programa em R que utilize a biblioteca R rpostgresql para se conectar a um banco de dados Postgresql e execute uma consulta para recuperar dados de uma tabela específica.

install.packages("RPostgreSQL")
library(RPostgreSQL)

host <- "postgresdb"
port <- 5432 
dbname <- "postgres"
user <- "giovane"
password <- "giovane"

conn <- dbConnect(RPostgreSQL::PostgreSQL(), host = host, 
                  port = port, dbname = dbname, 
                  user = user, password = password)

dbSendStatement(conn, "INSERT INTO STUDENT (student_id, name) VALUES (4, 'Medinho')")

dados <- dbGetQuery(conn, "SELECT * FROM STUDENT")

print(dados)

dbDisconnect(conn)

########################################################
### RMysql
########################################################

#29) Escreva um programa em R que utilize a biblioteca RMySQL para se conectar a um banco de dados MySQL e execute uma consulta para recuperar dados de uma tabela específica.

########################################################
### RSQLite
########################################################

#30) Escreva um programa em R que utilize a biblioteca RSQLite para se conectar a um banco de dados SQLite e execute uma consulta para recuperar dados de uma tabela específica.

setwd("~/ipbg123/aula14")
library(RSQLite)

conn <- dbConnect(RSQLite::SQLite(), dbname = "sqlite.db")

dbSendStatement(conn, "create table customer(customer_id integer, name varchar2(100))")
dbSendStatement(conn, "insert into customer values (1, 'Muttley')")

print(dbGetQuery(conn, "select * from customer"))

dbDisconnect(conn)

########################################################
## xlconnect
########################################################

#31) Escreva um programa em R que utilize a biblioteca xlconnect para ler dados de um arquivo Excel, realizar algum processamento e escrever os resultados em outro arquivo Excel.

########################################################
###-> xlconnect
########################################################

#32) Escreva um programa em R que utilize a biblioteca xlconnect para carregar dados de uma planilha específica de um arquivo Excel e exibir as primeiras 5 linhas.

#33) Escreva um programa em R que utilize a biblioteca xlconnect para criar um novo arquivo Excel, adicionar uma planilha e escrever dados em diferentes colunas.

#34) Escreva um programa em R que utilize a biblioteca xlconnect para ler uma célula específica de uma planilha de um arquivo Excel e exibir o seu valor.s acima.

########################################################
### xlsx
########################################################

#35) Escreva um programa em R que utilize a biblioteca xlsx para criar um novo arquivo Excel, adicionar uma planilha e escrever dados em diferentes colunas.os acima.

#36) Escreva um programa em R que utilize a biblioteca xlsx para ler dados de uma planilha específica de um arquivo Excel e exibir as primeiras 5 linhas.

########################################################
### foreign
########################################################

#37) Escreva um programa em R que utilize a biblioteca foreign para ler um arquivo de dados no formato SPSS (.sav) e exibir as primeiras 5 linhas.

#38) Escreva um programa em R que utilize a biblioteca foreign para escrever um objeto de dados em um arquivo no formato SPSS (.sav).

########################################################
### haven
########################################################

#39) Escreva um programa em R que utilize a biblioteca haven para ler um arquivo de dados no formato SPSS (.sav) e exibir as primeiras 5 linhas.

#40) Escreva um programa em R que utilize a biblioteca haven para escrever um objeto de dados em um arquivo no formato SPSS (.sav).

########################################################
### read.csv
########################################################

#41) Escreva um programa em R que utilize a biblioteca base para ler um arquivo de dados no formato CSV e exibir as primeiras 5 linhas.

########################################################
### read.table
########################################################

#42) Escreva um programa em R que utilize a biblioteca base para ler um arquivo de dados no formato de tabela delimitada (por exemplo, tabulação ou espaço) e exibir as primeiras 5 linhas.

########################################################
### read.fwf
########################################################

#43) Escreva um programa em R que utilize a biblioteca base para ler um arquivo de dados no formato de largura fixa (fixed-width file) e exibir as primeiras 5 linhas.

########################################################
### tidyverse
########################################################

#44) Escreva um programa em R que utilize a biblioteca tidyverse para criar um vetor numérico, calcular a média e o desvio padrão dos valores, e exibir os resultados.

#45) Escreva um programa em R que utilize a biblioteca tidyverse para criar uma sequência de números, elevar cada valor ao quadrado e exibir os resultados.

#46) Escreva um programa em R que utilize a biblioteca tidyverse para criar um dataframe com informações de alunos, adicionar uma nova coluna calculada com base em outras colunas e exibir o resultado.

#47) Escreva um programa em R que utilize a biblioteca tidyverse para criar uma sequência de datas, calcular o número de dias entre cada data e a data atual, e exibir o resultado.

########################################################
### dplyr
########################################################

#48) Escreva um programa em R que utilize a biblioteca dplyr para criar um dataframe com informações de alunos, filtrar os alunos com notas acima de uma determinada média e exibir o resultado.

#49) Escreva um programa em R que utilize a biblioteca dplyr para criar um dataframe com informações de funcionários, agrupar os funcionários por departamento e calcular a média dos salários de cada departamento.

#50) Escreva um programa em R que utilize a biblioteca dplyr para criar um dataframe com informações de produtos, ordenar os produtos por preço em ordem decrescente e exibir o resultado.

#51) Escreva um programa em R que utilize a biblioteca dplyr para criar um dataframe com informações de vendas, agrupar as vendas por mês e calcular o total de vendas em cada mês.

########################################################
### tidyr
########################################################

#52) Escreva um programa em R que utilize a biblioteca tidyr para criar um dataframe com informações de alunos, onde cada coluna representa uma disciplina e cada linha representa um aluno, e exiba o resultado.

#53) Escreva um programa em R que utilize a biblioteca tidyr para criar um dataframe com informações de vendas, onde cada linha representa uma venda com data e valor, e separe a coluna de data em colunas separadas para ano, mês e dia.

#54) Escreva um programa em R que utilize a biblioteca tidyr para criar um dataframe com informações de alunos, onde cada coluna representa uma disciplina e cada linha representa um aluno, e transforme o dataframe para um formato mais longo, onde cada linha representa um aluno-disciplina e seu respectivo valor.

#55) Escreva um programa em R que utilize a biblioteca tidyr para criar um dataframe com informações de vendas, onde cada linha representa uma venda com data e valor, e agrupe as vendas por mês, calculando a soma dos valores.

########################################################
### stringr
########################################################

#56) Escreva um programa em R que utilize a biblioteca stringr para contar o número de palavras em uma frase.

#57) Escreva um programa em R que utilize a biblioteca stringr para substituir todas as ocorrências de uma palavra em uma frase por outra palavra.

########################################################
### lubridate
########################################################

#58) Escreva um programa em R que utilize a biblioteca lubridate para extrair o dia da semana a partir de uma data.

#59) Escreva um programa em R que utilize a biblioteca lubridate para calcular a diferença em dias entre duas datas.

########################################################
### lubridate
########################################################

#60) Escreva um programa em R que utilize a biblioteca ggplot2 para criar um gráfico de dispersão (scatter plot) com pontos coloridos de acordo com uma variável categórica.

#61) Escreva um programa em R que utilize a biblioteca ggplot2 para criar um gráfico de barras (bar plot) com barras horizontais e rótulos personalizados para as categorias.

########################################################
### ggvis
########################################################

#62) Escreva um programa em R que utilize a biblioteca ggvis para criar um gráfico interativo de dispersão (scatter plot) com pontos coloridos de acordo com uma variável categórica.

#63) Escreva um programa em R que utilize a biblioteca ggvis para criar um gráfico de barras (bar plot) interativo com rótulos personalizados para as categorias.

########################################################
### rgl
########################################################

#64) Escreva um programa em R que utilize a biblioteca rgl para criar um gráfico de dispersão 3D.

#65) Escreva um programa em R que utilize a biblioteca rgl para criar uma superfície 3D.

########################################################
### tidymodels
########################################################

#66) Escreva um programa em R que utilize a biblioteca tidymodels para realizar uma regressão linear simples.

########################################################
### cart - anova
########################################################

#67) Escreva um programa em R que utilize a biblioteca car para realizar uma ANOVA de um modelo linear simples.

#68) Escreva um programa em R que utilize a biblioteca car para realizar uma ANOVA de um modelo linear múltiplo.

########################################################
### mgcv
########################################################

#69) Escreva um programa em R que utilize a biblioteca mgcv para ajustar um modelo linear generalizado aditivo (GAM) aos dados de um conjunto de exemplo.

#70) Escreva um programa em R que utilize a biblioteca mgcv para ajustar um modelo GAM aos dados de um conjunto de exemplo com uma função de ligação não linear.

########################################################
### lme4
########################################################

#71) Escreva um programa em R que utilize a biblioteca lme4 para ajustar um modelo linear misto aos dados de um conjunto de exemplo.

########################################################
### randomforest
########################################################

#72) Escreva um programa em R que utilize a biblioteca randomForest para ajustar um modelo de floresta aleatória aos dados de um conjunto de exemplo.

#73) Escreva um programa em R que utilize a biblioteca randomForest para ajustar um modelo de floresta aleatória com ajuste de hiperparâmetros aos dados de um conjunto de exemplo.

########################################################
### vcd
########################################################

#74) Escreva um programa em R que utilize a biblioteca vcd para realizar uma análise de tabela de contingência entre duas variáveis categóricas.

#75) Escreva um programa em R que utilize a biblioteca vcd para criar um gráfico de mosaico para visualizar a relação entre duas variáveis categóricas.

########################################################
### glmnet
########################################################

#76) Escreva um programa em R que utilize a biblioteca glmnet para ajustar um modelo de regressão Ridge aos dados de um conjunto de exemplo.

#77) Escreva um programa em R que utilize a biblioteca glmnet para ajustar um modelo de regressão Lasso com validação cruzada aos dados de um conjunto de exemplo.

########################################################
### survival
########################################################

#78) Escreva um programa em R que utilize a biblioteca survival para ajustar um modelo de regressão de Cox aos dados de um conjunto de exemplo.

#79) Escreva um programa em R que utilize a biblioteca survival para criar um gráfico de Kaplan-Meier para visualizar a curva de sobrevivência de um conjunto de dados de exemplo.

########################################################
### shiny
########################################################

#80) Escreva um programa em R que utilize a biblioteca shiny para criar uma aplicação que exiba um gráfico interativo de dispersão.

#81) Escreva um programa em R que utilize a biblioteca shiny para criar uma aplicação que permita ao usuário fazer previsões usando um modelo de regressão linear.

########################################################
### xtable
########################################################

#82) Escreva um programa em R que utilize a biblioteca xtable para criar uma tabela formatada em LaTeX a partir de um conjunto de dados.

#83) Escreva um programa em R que utilize a biblioteca xtable para criar uma tabela formatada em HTML a partir de um data frame.

########################################################
### sp
########################################################

#84) Escreva um programa em R que utilize a biblioteca sp para criar um mapa de pontos a partir de coordenadas geográficas.

#85) Escreva um programa em R que utilize a biblioteca sp para calcular a distância entre dois pontos geográficos.

########################################################
### maps
########################################################

#86) Escreva um programa em R que utilize a biblioteca maps para criar um mapa do mundo com a coloração dos países diferentes.

########################################################
### zoo
########################################################

#87) Escreva um programa em R que utilize a biblioteca zoo para calcular a média móvel de uma série temporal.

#88) Escreva um programa em R que utilize a biblioteca zoo para calcular o retorno percentual de uma série temporal de preços.

########################################################
### xts
########################################################

#89) Escreva um programa em R que utilize a biblioteca xts para calcular a média móvel de uma série temporal.

#90) Escreva um programa em R que utilize a biblioteca xts para calcular o retorno percentual de uma série temporal de preços.

########################################################
### rcpp
########################################################

#91) Escreva um programa em R que utilize a biblioteca Rcpp para calcular a soma de dois vetores numéricos usando código C++.

#92) Escreva um programa em R que utilize a biblioteca Rcpp para calcular o fatorial de um número usando código C++.

########################################################
### data.table
########################################################

#93) Escreva um programa em R que utilize a biblioteca data.table para calcular a média de uma coluna em um conjunto de dados.

#94) Escreva um programa em R que utilize a biblioteca data.table para filtrar e ordenar um conjunto de dados.

########################################################
### xml
########################################################

#95) Escreva um programa em R que utilize a biblioteca xml para ler e extrair dados de um arquivo XML.

#96) Escreva um programa em R que utilize a biblioteca xml para criar um arquivo XML a partir de dados estruturados.

########################################################
### jsonlite
########################################################

#97) Escreva um programa em R que utilize a biblioteca jsonlite para ler e extrair dados de um arquivo JSON.

#98) Escreva um programa em R que utilize a biblioteca jsonlite para criar um arquivo JSON a partir de dados estruturados.

########################################################
### httr
########################################################

#98) Escreva um programa em R que utilize a biblioteca httr para fazer uma requisição GET em uma API e exibir o conteúdo da resposta.

#99)  Escreva um programa em R que utilize a biblioteca httr para fazer uma requisição POST em uma API com dados JSON e exibir o conteúdo da resposta.

########################################################
### devtools
########################################################

#100) Escreva um programa em R que utilize a biblioteca devtools para instalar um pacote diretamente do GitHub.

#101)
Escreva um programa em R que utilize a biblioteca devtools para carregar um pacote que está em desenvolvimento no seu ambiente.

########################################################
### testthat
########################################################

#102) Escreva um programa em R que utilize a biblioteca testthat para testar uma função que retorna a soma de dois números.

#103) Escreva um programa em R que utilize a biblioteca testthat para testar uma função que verifica se uma string é um palíndromo.

########################################################
### roxygen2
########################################################

#104) Escreva um programa em R que utilize a biblioteca roxygen2 para documentar uma função que calcula o quadrado de um número.

#105) Escreva um programa em R que utilize a biblioteca roxygen2 para documentar uma função que verifica se um número é par.