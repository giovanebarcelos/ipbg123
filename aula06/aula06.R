x <- 0:5
y <- sum(x[-6] + 2)

# Verificando nulos
idades <- c(31, 23, NA, 19, NA)
is.na(idades)
which(is.na(idades))
idades[which(is.na(idades))]
idades[which(is.na(idades) == FALSE)]

# Setar path do arquivo para carga
setwd("~/ipbg123/aula06/")

# Carregar csv
snail <- read.csv(file = "snail_feeding.csv", 
                  header = TRUE, 
                  strip.white = TRUE, 
                  na.strings = " ", 
                  stringsAsFactors = TRUE)

# resumo do dataframe 
summary(snail)
str(snail)
names(snail)

# remoção das colunas 8-10
snail[,1:7]
snail <- snail[,-c(8:10)]

# Correção male
# pesquisa sex igual a "males" e "Male"
levels(snail$Sex)
which((snail$Sex == "males") | (snail$Sex == "Male"))
# pesquisa sex igual a "males" e "Male" e atribui valor "male" 
snail$Sex[which((snail$Sex == "males") | (snail$Sex == "Male"))] <- "male"
# recalculo dos fatores de Sex 
snail$Sex <- factor(snail$Sex)

# Correção outlier do depth = 162 
snail$Depth[which(snail$Depth == 162)] <- 1.62

# Cabeçalho - 6 primeiros 
head(snail)
head(snail, n = 10) # 10 primeiros 

# Rodapé - 6 últimos 
tail(snail)

# Verificar linhas duplicadas 
snail[which(duplicated(snail)),]
sum(duplicated(snail))

# Juntar linhas duplicadas em apenas uma 
snail <- unique(snail)
# Recalcular row.names 
row.names(snail) <- 1:nrow(snail)

head(snail, n=20)

# salvar snail feeding corrigido 
write.csv(snail, file = "snail_feeding_ok.csv", row.names = FALSE, fileEncoding = "UTF8")
write.table(snail, file = "snail_feeding_ok.txt", row.names = FALSE, fileEncoding = "UTF8")

rm(list = ls())

save(file = "aula06.Rdata")