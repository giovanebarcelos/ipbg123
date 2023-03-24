# tipo e classe variáveis
numero <- 13
class(numero)
numero1 <- 8L
class(numero1)
typeof(numero)

# transformação
numero1 <- as.numeric(numero1)
typeof(numero1)
numero1 <- as.character(numero1)
typeof(numero1)
as.logical(13)

is.numeric(numero)
is.double(numero1)

# Vetor 
idades <- c(13, 21, 30, 41)
idades[2]
idades[2:3]
idades[-4]
idades[-(1:3)]
idades[c(1,4)]
numeros <- seq(1:4)
numeros
numeros1 <- seq(from=1, to=10, by=2)
numeros1
numeros2 <- rep(x = 2, times = 5 )
numeros2

dados <- c(10, "A", 13L)
dados

# calculo vetor 

numeros[5] = 0
somaNumeros <- numeros + numeros1

fatorNumeros <- numeros * numeros1

numeros <- c(1:10)
numeros[numeros > 5]
numeros
rev(numeros)

numeros <- c(1,1,3,3,5,6)
numeros
unique(numeros)

# fator 
categorias <- factor(
  c("Infantil", "Juvenil", "Adulto") )

categorias
class(categorias)
typeof(categorias)
str(categorias)

categorias <- factor(
  c("Infantil", "Juvenil", "Adulto"), 
  levels = c("Infantil", "Juvenil", "Adulto"))
str(categorias)

tamanhos <- factor(c("pequeno", "grande", "pequeno",
                     "médio"))
tamanhos
relevel(tamanhos, ref = "grande")
relevel(tamanhos, ref = "médio")
relevel(tamanhos, ref = "pequeno")

# Lists

dados <- list(1:3, c("Muttley", "Medinho"), 
              13L)
dados
dados[1]
dados[[1]][3]

# Matrix
dados <- matrix(1:6, nrow=2, ncol=3, 
                dimnames = list(
                  c("1", "2"), c("a", "b", "c")
                ), byrow = TRUE)
dados 
?matrix
dados[2,2]
dados[1:2, 2:3]

# Data Frame 
dados <- data.frame(nome = c("Muttley", "Medinho"),
                    idade = c(20, 26), 
                    stringsAsFactors = TRUE)
dados
str(dados)
dados$nome
