# 1. Carregue o conjunto de dados "mtcars" em um objeto chamado "carros" e verifique o número de linhas e colunas.
carros <- mtcars 
dim(carros)
str(carros)

# 2. Salve o objeto "carros" em um arquivo CSV chamado "carros.csv".

write.csv2(carros, file = "carros.csv", row.names = FALSE)

# 3. Carregue o arquivo "carros.csv" em um objeto chamado "carros_novos" e verifique o número de linhas e colunas.

carros_novos <- read.csv2("carros.csv")
dim(carros_novos)
str(carros_novos)

# 4. Carregue o arquivo "carros.csv" em um objeto chamado "carros_novos" e selecione apenas as colunas "mpg", "cyl" e "hp".
carros_novos <- read.csv2("carros.csv")
carros_novos <- carros_novos[,c("mpg", "cyl", "hp")]
dim(carros_novos)
str(carros_novos)

# 5. Salve o objeto "carros_novos" em um arquivo RDS chamado "carros_novos.rds".

saveRDS(carros_novos, file="carros_novos.rds")

# 6. Carregue o arquivo "carros_novos.rds" em um objeto chamado "carros_novos" e verifique o número de linhas e colunas.

carros_novos <- readRDS("carros_novos.rds")
dim(carros_novos)
str(carros_novos)

# 7. Carregue o arquivo "carros.csv" em um objeto chamado "carros_novos" 
# e selecione apenas as linhas em que o valor de "mpg" é maior do que 20.

carros_novos <- read.csv2("carros.csv")
carros_novos <- carros_novos[carros_novos$mpg > 20,]
str(carros_novos)

# 8. Você tem um arquivo CSV chamado "dados.csv" contendo dados de vendas diárias para uma loja. 
# As colunas do arquivo são "data", "vendas" e "custo". Escreva um código em R para ler o arquivo e 
# calcular a média diária de vendas e custos. Em seguida, salve as médias em um novo arquivo CSV 
# chamado "medias.csv", com as colunas "data", "media_vendas" e "media_custos".
data_c <- c("21/03/2023", "21/03/2023", "23/03/2023")
vendas_c <- c(10000, 8000, 11000)
custo_c <- c(7000, 6500, 9000)

dados <- data.frame(data = data_c, vendas = vendas_c, custo = custo_c)

write.csv(dados, file = "dados.csv", row.names = FALSE)

df_dados <- read.csv("dados.csv", header = TRUE)

medias <- aggregate(df_dados[, c("vendas", "custo")], 
                    by = list(dados$data), mean)

colnames(medias) <- c("data", "media_vendas", "media_custos")

write.csv(medias, file = "medias.csv", row.names = FALSE)

# 9. Você tem um arquivo TXT chamado "notas.txt" contendo as notas de um exame de matemática. 
# Cada linha do arquivo contém o nome do aluno e sua nota, separados por um espaço em branco. 
# Escreva um código em R para ler o arquivo e calcular a média das notas. 
# Em seguida, salve a média em um novo arquivo TXT chamado "media.txt".

nome_c <- c("Dick Vigarista", "Penélope Charmosa", "Muttley")
nota_c <- c(7, 9, 8)

notas <- data.frame( nome = nome_c, nota = nota_c)

write.table(notas, file = "notas.txt", row.names = FALSE)

notas_alunos <- read.table("notas.txt", header = TRUE)

media_total <- mean(notas_alunos$nota)

write(paste("Média Total = ", round(media_total,2)), file = "media.txt")

# 11. Você recebeu um arquivo TXT chamado "vendas.txt" com informações de vendas de uma loja. 
# Cada linha do arquivo contém o nome do produto vendido, a quantidade vendida e o valor unitário, 
# separados por vírgulas. Escreva um código em R para ler o arquivo e calcular o total de vendas da loja. 
# Em seguida, salve o total em um novo arquivo TXT chamado "total_vendas.txt".
nome_produto_c <- c("Mouse", "Teclado", "Fone de Ouvido")
qtde_c <- c(3, 2, 5)
valor_unitario_c <- c(35.8, 45.3, 120.5)

vendas <- data.frame(nome_produto = nome_produto_c, qtde = qtde_c, valor_unitario = valor_unitario_c)

write.table(vendas, row.names = FALSE, file = "vendas.txt", sep = ",")

df_vendas <- read.table("vendas.txt", sep = ",", header = TRUE)

total <- sum(df_vendas$qtde * df_vendas$valor_unitario)

write(paste("Total vendas = ", round(total, 2)), file = "total_vendas.txt")

