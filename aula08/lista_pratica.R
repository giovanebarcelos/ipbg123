# 1) Crie um histograma da distribuição de idades (Age) dos pacientes em um estudo clínico de MRI e Alzheimers (Magnetic Resonance Imaging Comparisons of Demented and Nondemented Adults) disponível no dataset mri_and_alzheimers.csv .

ds_mri <- read.csv('mri_and_alzheimers.csv', header = TRUE, 
                   stringsAsFactors = TRUE)

hist(ds_mri$Age, main = "Distribuição de idades", 
     xlab = "Idade", ylab = "Frequência")

group_age <- ds_mri %>% 
             group_by(Age) %>%
             tally()

print(group_age, n = 73)

# 2) Faça um gráfico de dispersão com a relação entre a altura (Height) e o peso (Weight) dos participantes de uma pesquisa (Dataset: 500_Person_Gender_Height_Weight_Index.csv)

ds_hw <- read.csv('500_Person_Gender_Height_Weight_Index.csv', header = TRUE, 
                   stringsAsFactors = TRUE)

plot(ds_hw$Height, ds_hw$Weight, main = "Relação entre altura e peso", 
     xlab = "Altura", ylab = "Peso")

#3) Crie um gráfico de barras da quantidade de vendas (Quantity Ordered) por produto (Product)  em uma loja. (Dataset: Sales_August_2019.csv)

ds_vendas <- read.csv('Sales_August_2019.csv', header = TRUE, 
                  stringsAsFactors = TRUE)

ds_vendas <- ds_vendas %>%
   group_by(Product) %>%
   summarize(Quantity_Total = sum(Quantity.Ordered))

barplot(ds_vendas$Quantity_Total, names.arg = ds_vendas$Product,
        main = "Quantidade de vendas por produto", 
        xlab = "Produto", ylab = "Quantidade", las = 2, cex.names = .5 )

#4) Faça um gráfico de linhas para mostrar a evolução das vendas (Total) de um supermercado ao longo do ano. (Dataset: supermarket_sales.csv)

# Importação dos dados
ds_sup <- read.csv('supermarket_sales.csv', header = TRUE, 
                      stringsAsFactors = TRUE)

# Criação nova coluna com dia/mês
ds_sup[, 'Ano_Mes'] <- format(as.Date(ds_sup$Date, '%m/%d/%Y'), '%d/%m')

# Agrupamento do total vendido por dia do mês
ds_sup_day <- ds_sup %>%
  group_by(Dia_Mes) %>%
  summarize(Total_Month = sum(Total))

# Transformação da Tbl em Dataframe
ds_sup_day <- as.data.frame(ds_sup_day)

# Transformação do Dia_Mes em Fator para utilizar no gráfico de linhas
# pois ele não consegue calcular limites que não sejam números
ds_sup_day$Dia_Mes <- factor(ds_sup_day$Dia_Mes)

# Total acumulado diariamente para demonstrar evolução das vendas diárias
ds_sup_day <- ds_sup_day %>%
              mutate(Total_Accumulated = cumsum(Total_Month))

# Plotagem do gráfico
plot(ds_sup_day$Dia_Mes, ds_sup_day$Total_Accumulated, type = 'l',
     main = "Evolução do faturamento",
     xlab = "Data", ylab = "Faturamento")

#5) Crie um gráfico de setores para mostrar a distribuição percentual de gastos totais (production_cost) dos filmes por genêro de filme (genre). (Dataset: top-500-movies.csv)

df_filmes <- read.csv('top-500-movies.csv', header = TRUE, 
                   stringsAsFactors = TRUE)

df_genre <- df_filmes %>%
            group_by(genre) %>%
            summarize(total = sum(production_cost))

pie(df_genre$total, labels = df_genre$genre, 
    main = "Distribuição percentual de gastos totais")

#6) Faça um gráfico de caixas para mostrar a distribuição dos salários (salary_in_usd) dos cientistas de dados considerando a média por país de residência (employee_residence). (Dataset: ds_salaries.csv)

df_salaries <- read.csv('ds_salaries.csv', header = TRUE, 
                      stringsAsFactors = TRUE)

df_salaries_avg <- df_salaries %>%
                   group_by(employee_residence) %>%
                   summarize(salary_avg = mean(salary_in_usd))

df_salaries_avg <- as.data.frame(df_salaries_avg)
boxplot(df_salaries_avg$salary_avg, main = "Distribuição dos salários médios dos funcionários", 
        xlab = "Salário")

#7) Crie um gráfico de barras para comparar a quantidade de vendas por produto.

df <- data.frame(Produto = c('A', 'B', 'C', 'D', 'E'), 
                 QtdeVendas = c(1000, 2000, 3000, 4000, 5000))

barplot(df$QtdeVendas, names.arg = df$Produto, 
        main = "Comparativo quantidade de vendas",
        xlab = "Produto", ylab = "Qtde Vendas")

#12) Crie um gráfico de pizza para mostrar a proporção de diferentes categorias.

df <- data.frame(categoria = c('A', 'B', 'C', 'D'), 
                 proporcao = c(0.4, 0.3, 0.2, 0.1) )
pie(df$proporcao, labels = df$categoria, main = "Proporção de Categorias")

