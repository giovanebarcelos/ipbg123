#-> Rearranjo e manipulação em R
#1) Como adicionar uma nova coluna a um data frame existente?
  
#2) Como selecionar uma coluna específica em um data frame?
  
#3) Como selecionar várias colunas em um data frame?
  
#4) Como filtrar linhas em um data frame com base em uma condição?
  
#5) Como ordenar um data frame com base em uma coluna?
  
#6) Como mesclar dois data frames em R?
# Dataframes
df1 <- data.frame(id = 1:5, letras = c('a', 'b', 'c', 'd', 'e') )
df2 <- data.frame(id = 3:7, letras = c('f', 'g', 'h', 'i', 'j') )

# Mesclar dataframes com merge
df3 <- merge( df1, df2, by = "id")

# Resultado
df3
  
#7) Como unir dois data frames verticalmente em R?
# Dataframes
df1 <- data.frame(id = 1:5, letras = c('a', 'b', 'c', 'd', 'e') )
df2 <- data.frame(id = 3:7, letras = c('f', 'g', 'h', 'i', 'j') )

# União dos data frames de forma vertical 
df3 <- rbind( df1, df2)
              
# Resultado
df3
  
#8) Como calcular a média de uma coluna em um data frame?
# Dataframe
df <- data.frame( idades = 13:33)

# Média 
media_idades <- mean(df$idades)

# Resultado 
media_idades
  
#9) Como contar o número de linhas em um data frame?
# Dataframe
df <- data.frame( idades = 13:33)

# Contagem número de linhas 
num_linhas <- nrow(df)

# Resultado
num_linhas
  
#-> Agrupamento de conjuntos de dados relacionados
#10) Como agrupar dados de diferentes data frames com base em uma coluna comum?
#    Suponha que temos dois data frames df1 e df2, e queremos agrupar os dados com base em uma coluna comum x. Podemos usar a função merge para mesclar os data frames com base em x e, em seguida, usar a função split para dividir o resultado em uma lista de data frames agrupados.

# Dataframes
df1 <- data.frame(x = c(1,2,2,3,3), num = 1:5 )
df2 <- data.frame(x = c(2,3,3,4,4), num = 6:10 )

# Mesclar dataframes com merge
df3 <- merge( df1, df2, by = "x", all = TRUE)

# Divisão de dataframes agrupados
df_list <- split(df3[,-1], df3$x)

# Resultado
df_list

#11) Como agrupar dados de diferentes data frames com base em várias colunas comuns?
#Suponha que temos dois data frames df1 e df2, e queremos agrupar os dados com base em várias colunas comuns x e y. Podemos usar a função merge para mesclar os data frames com base em x e y e, em seguida, usar a função split para dividir o resultado em uma lista de data frames agrupados.

# Dataframes
df1 <- data.frame(x = c(1,2,2,3,3), y = c(1,2,2,3,3), num = 1:5 )
df2 <- data.frame(x = c(2,3,3,4,4), y = c(2,3,3,4,4), num = 6:10 )

# Mesclar dataframes com merge
df3 <- merge( df1, df2, by = c("x", "y"), all = TRUE)

# Divisão de dataframes agrupados
df_list <- split(df3[, -c(1,2)], list(df3$x, df3$y))

# Resultado
df_list

#-> inner_Join, left_Join e right_Join
#12) Como usar a função inner_join para unir dois data frames com base em uma coluna comum? Suponha que temos dois data frames df1 e df2 e queremos unir os dados com base em uma coluna comum x. Podemos usar a função inner_join do pacote dplyr para unir os data frames com base em x.
# Dataframes
df1 <- data.frame(x = 1:5, letras = c('a', 'b', 'c', 'd', 'e') )
df2 <- data.frame(x = 3:7, letras = c('f', 'g', 'h', 'i', 'j') )

# Mesclar dataframes com inner_join
df3 <- inner_join( df1, df2, by = "x")

# Resultado 
df3

#13) Como usar a função left_join para unir dois data frames com base em uma coluna comum?
#    Suponha que temos dois data frames df1 e df2 e queremos unir os dados com base em uma coluna comum x, mantendo todos os dados do df1. Podemos usar a função left_join do pacote dplyr para unir os data frames com base em x.

# Dataframes
df1 <- data.frame(x = 1:5, letras = c('a', 'b', 'c', 'd', 'e') )
df2 <- data.frame(x = 3:7, letras = c('f', 'g', 'h', 'i', 'j') )

# Mesclar dataframes com inner_join
df3 <- left_join( df1, df2, by = "x")

# Resultado 
df3

#14) Como usar a função right_join para unir dois data frames com base em uma coluna comum?
#    Suponha que temos dois data frames df1 e df2 e queremos unir os dados com base em uma coluna comum x, mantendo todos os dados do df2. Podemos usar a função right_join do pacote dplyr para unir os data frames com base em x.
# Dataframes
df1 <- data.frame(x = 1:5, letras = c('a', 'b', 'c', 'd', 'e') )
df2 <- data.frame(x = 3:7, letras = c('f', 'g', 'h', 'i', 'j') )

# Mesclar dataframes com inner_join
df3 <- right_join( df1, df2, by = "x")

# Resultado 
df3

#-> Separate
#15) Como usar a função separate para separar uma coluna de um data frame em duas ou mais colunas com base em um separador?
#    Suponha que temos um data frame df com uma coluna nome_completo que contém o nome e sobrenome de uma pessoa, separados por um espaço. Podemos usar a função separate do pacote tidyr para separar a coluna em duas colunas, nome e sobrenome, com base no espaço.

library(tidyr)

# Criar dataframe de exemplo 
df <- data.frame(nome_completo = c("Dick Vigarista", 'Penélope Charmosa'))

# Separar a coluna nome_completo em duas colunas (nome, sobrenome) com base no espaço no nome_completo 
df_sep <- separate(df, nome_completo, into = c("nome", "sobrenome"), sep = " ")

print(df_sep)

#16) Como usar a função separate para separar uma coluna de um data frame em duas ou mais colunas com base em um número fixo de caracteres?
#    Suponha que temos um data frame df com uma coluna codigo que contém um código com um prefixo de duas letras e um número de três dígitos. Podemos usar a função separate do pacote tidyr para separar a coluna em duas colunas, prefixo e numero, com base no número fixo de caracteres de cada parte.

df <- data.frame(codigo = c("XZ131", 'WH813', 'ACD789'))
df_sep <- separate(df, codigo, into("prefixo", "numero"), sep=2)
print(df_sep)

#-> Unite
#17) Como usar a função unite para unir duas ou mais colunas de um data frame em uma única coluna?
#    Suponha que temos um data frame df com duas colunas, nome e sobrenome, e queremos unir essas colunas em uma única coluna, nome_completo. Podemos usar a função unite do pacote tidyr para fazer isso.

library(tidyr)
df <- data.frame(nome = c("Dick", "Penélope"), 
                 sobrenome = c("Vigarista", "Charmosa"))
df_unite <- unite(df, nome_completo, c("nome", "sobrenome"), sep=" ")
print(df_unite)

#18) Como usar a função unite para unir duas ou mais colunas de um data frame em uma única coluna com um separador diferente?
#    Suponha que temos um data frame df com três colunas, cidade, estado e pais, e queremos unir essas colunas em uma única coluna, localizacao, com um separador diferente de um espaço, como uma vírgula. Podemos usar a função unite do pacote tidyr para fazer isso.

library(tidyr)
df <- data.frame(cidade = c("Porto Alegre", "Canoas"), 
                 estado = c("RS", "RS"), 
                 pais = c('Brasil', 'Brasil'))
df_unite <- unite(df, localizacao, c("cidade", "estado","pais"), sep=", ")
print(df_unite)

#-> subset
#19) Como usar a função subset para selecionar apenas as linhas de um data frame que atendem a uma determinada condição?
#    Suponha que temos um data frame df com informações sobre algumas cidades, incluindo sua população. Queremos selecionar apenas as cidades com uma população superior a 1 milhão de habitantes. Podemos usar a função subset para isso.

df <- data.frame( cidade = c('Porto Alegre', 'Canoas'), 
                  populacao = c(3000000, 800000))
df <- subset(df, populacao > 1000000)
print(df)

#20) Como usar a função subset para selecionar apenas algumas colunas de um data frame?
#Suponha que temos um data frame df com informações sobre algumas cidades, incluindo sua população, sua localização e sua altitude. Queremos selecionar apenas as colunas cidade e populacao. Podemos usar a função subset para isso.

#-> slice e filter
#21) Como usar a função slice para selecionar linhas específicas de um data frame?
#    Suponha que temos um data frame df com informações sobre alguns países, incluindo sua população e sua área. Queremos selecionar apenas as duas primeiras linhas do data frame. Podemos usar a função slice para isso.

#22) Como usar a função filter para selecionar linhas de um data frame que atendem a uma determinada condição?
#    Suponha que temos um data frame df com informações sobre alguns países, incluindo sua população e sua área. Queremos selecionar apenas os países com uma área superior a 9 milhões de km². Podemos usar a função filter para isso.

#23) Como usar a função filter para selecionar linhas de um data frame que atendem a duas ou mais condições?
#    Suponha que temos um data frame df com informações sobre alguns países, incluindo sua população e sua área. Queremos selecionar apenas os países com uma área entre 9 e 10 milhões de km² e com uma população superior a 100 milhões de habitantes. Podemos usar a função filter para isso.

#-> sample_n e sample_frac
#24) Como usar a função sample_n para selecionar um número aleatório de linhas de um data frame?
#Suponha que temos um data frame df com informações sobre algumas frutas, incluindo sua cor e seu preço. Queremos selecionar aleatoriamente 5 frutas do data frame. Podemos usar a função sample_n para isso.

df <- data.frame( fruta = c('abacaxi', 'banana', 'uva'),
                  cor = c('marrom', 'amarelo', 'roxo'), 
                  preco = c(4.5, 3, 3.5) )

df <- sample_n(df, 2)

print(df)

#25) Como usar a função sample_frac para selecionar uma fração aleatória de linhas de um data frame?
#    Suponha que temos um data frame df com informações sobre algumas frutas, incluindo sua cor e seu preço. Queremos selecionar aleatoriamente 30% das frutas do data frame. Podemos usar a função sample_frac para isso.

df <- data.frame( fruta = c('abacaxi', 'banana', 'uva'),
                  cor = c('marrom', 'amarelo', 'roxo'), 
                  preco = c(4.5, 3, 3.5) )

df <- sample_frac(df, 0.7)

print(df)

#26) Como usar a função sample_n em conjunto com o operador - para selecionar aleatoriamente algumas linhas e excluir outras de um data frame?
#    Suponha que temos um data frame df com informações sobre alguns animais, incluindo sua espécie e seu peso. Queremos selecionar aleatoriamente 3 animais do data frame, mas excluir um animal específico (por exemplo, o animal com a espécie "gato"). Podemos usar a função sample_n em conjunto com o operador - para isso.

#-> summarize
#27) Como usar a função summarize para agregar informações de um data frame?
#Suponha que temos um data frame df com informações sobre vendas de produtos, incluindo o produto, o mês e o valor da venda. Queremos obter o total de vendas por mês. Podemos usar a função summarize para isso.

#28) Como usar a função summarize em conjunto com outras funções de agregação para obter informações estatísticas de um data frame?
#Suponha que temos um data frame df com informações sobre a altura e o peso de algumas pessoas. Queremos obter informações estatísticas sobre essas variáveis, incluindo a média, o desvio padrão e os valores mínimo e máximo. Podemos usar a função summarize em conjunto com outras funções de agregação para isso.

#-> group_by
#29) Como usar a função group_by para agrupar um data frame por uma ou mais variáveis?
#    Suponha que temos um data frame df com informações sobre vendas de produtos, incluindo o produto, o mês e o valor da venda. Queremos agrupar as informações por produto e mês. Podemos usar a função group_by para isso.

#30) Como usar a função group_by em conjunto com outras funções de manipulação de dados, como summarize, para agregar informações de um data frame?
#    Suponha que temos um data frame df com informações sobre vendas de produtos, incluindo o produto, o mês e o valor da venda. Queremos obter o total de vendas por produto e mês. Podemos usar a função group_by em conjunto com a função summarize para isso.