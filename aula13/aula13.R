#1) Qual é a média, mediana e desvio padrão da altura de um grupo de pessoas?

altura <- c(1.80, 1.65, 1.55, 1.70, 1.63)
mean(altura) # Média 
median(altura) # Mediana
sd(altura) # Desvio Padrão
  
#2) Qual é a probabilidade de se obter cara em um lançamento de moeda?
  
sample(c("cara", "coroa"), 1) # realiza um único lançamento de moeda
  
'''
3) Dado um conjunto de dados com uma distribuição normal, qual é a probabilidade de se obter um valor acima de 2.5 desvios padrão da média?
'''

pnorm(2.5, mean = 0, sd = 1, lower.tail = FALSE)

'''
4) Suponha que temos um vetor com as notas de 10 alunos em três provas diferentes (prova1, prova2 e prova3). Queremos calcular a média de cada prova e a média geral dos alunos utilizando a função sapply().
'''

# Vetor com as notas de 10 alunos em três provas diferentes
notas <- data.frame(prova1 = c(8, 6, 7, 9, 7, 5, 8, 6, 9, 7),
                    prova2 = c(7, 5, 9, 8, 6, 7, 8, 6, 9, 7),
                    prova3 = c(6, 7, 8, 5, 9, 6, 8, 6, 9, 7))

# Calcular a média de cada prova 
sapply(notas, mean)

# Calcular a média geral 
mean(sapply(notas, mean))

'''
5) Suponha que temos um vetor com as idades de 10 pessoas e queremos classificá-las em faixas etárias (até 20 anos, de 21 a 40 anos e acima de 40 anos). Para isso, utilizaremos a função tapply().
'''

# Vetor com as idades de 10 pessoas
idades <- c(25, 18, 41, 23, 35, 29, 19, 42, 37, 27)

tapply(idades, cut(idades, breaks= c(0,20,40,Inf)), length)

'''
6) Suponha que temos uma matriz com as notas de 5 alunos em duas provas diferentes (prova1 e prova2). Queremos calcular a média de cada prova para cada aluno utilizando a função sapply().
'''

# Matriz com as notas de 5 alunos em duas provas diferentes
notas <- matrix(c(8, 7, 9, 6, 7, 5, 8, 6, 7, 9, 7, 8, 6, 9), ncol = 2)

sapply(1:nrow(notas), function(i) mean(notas[i,]))

'''
7) Suponha que temos uma lista com as notas de 5 alunos em duas provas diferentes (prova1 e prova2). Queremos calcular a média de cada prova para cada aluno utilizando a função lapply().
'''

# Lista com as notas de 5 alunos em duas provas diferentes
notas <- list(aluno1 = c(8, 7),
              aluno2 = c(9, 6),
              aluno3 = c(7, 5),
              aluno4 = c(8, 6),
              aluno5 = c(9, 7))

lapply(notas, function(c) mean(c))

'''
8) Suponha que temos um data frame com informações sobre 10 países, incluindo a população e o IDH (Índice de Desenvolvimento Humano). Queremos calcular a média do IDH para países com população acima e abaixo de um certo valor limite, utilizando a função tapply().
'''

# Data frame com informações sobre 10 países
paises <- data.frame(pais = c("Brasil", "Argentina", "Uruguai", "Chile", "Peru", "México", "Canadá", "Estados Unidos", "França", "Alemanha"),
                     populacao = c(210147125, 45376763, 3473730, 19116201, 32824358, 127792286, 38005238, 331449281, 66987244, 83019213),
                     IDH = c(0.758, 0.845, 0.804, 0.851, 0.777, 0.774, 0.926, 0.926, 0.901, 0.936))

populacao_limite <- 400000000

tapply(paises$IDH, paises$populacao > populacao_limite, mean )

'''
9) Dado um conjunto de dados com uma distribuição normal, qual é o valor do percentil 75%?
'''

qnorm(0.75, mean=0, sd=1)

#10) Qual é o coeficiente de correlação entre duas variáveis numéricas?

x <- c(6,7,8,9,10)
y <- c(1,2,3,4,5)
cor(x,y)
  
#11) Qual é o intervalo de confiança de 95% para a média de uma população?

# amostra aleatório de uma população com 100 hab - média = 10 - desvio padrão = 2
set.seed(123)
amostra <- rnorm(100, mean=10, sd=2) 
# Test de hipótese para obter intervalo de confiança para uma média
t.test(amostra)
  
#12) Qual é o p-valor de um teste de hipótese para comparar a média de duas amostras independentes?

set.seed(123)
amostra1 <- rnorm(100, mean=10, sd=2)
amostra2 <- rnorm(100, mean=12, sd=2) 
# Test de hipótese para obter intervalo de confiança para uma média
t.test(amostra1, amostra2)

''' 
13) Suponha que temos duas amostras de tamanhos iguais ou diferentes e queremos testar se a diferença média entre elas é estatisticamente significativa ou não. Para isso, podemos realizar um teste t utilizando a função t.test() do R. Se o intervalo de confiança contiver o valor zero, isso indica que não podemos rejeitar a hipótese nula de que não há diferença significativa entre as médias das amostras.
Temos duas amostras de notas de estudantes (nota1 e nota2) e queremos testar se há diferença significativa entre as notas médias dos dois grupos. Vamos utilizar um nível de significância de 5%.
''' 

# Criando as amostras de notas
nota1 <- c(6.5, 8.2, 7.7, 5.5, 9.1, 6.8, 8.4, 7.1, 6.3, 7.9)
nota2 <- c(7.2, 6.9, 8.1, 5.8, 7.4, 6.6, 8.6, 7.8, 7.5, 6.2)

t.test(nota1, nota2, var.equal = TRUE, conf.level = 0.95)

'''
14) Um pesquisador quer verificar se existe uma diferença significativa na altura média entre dois grupos de pessoas. Para isso, ele coletou os dados de altura de 50 pessoas em cada grupo. Utilizando o R, faça um teste de hipótese para verificar se há diferença significativa na altura média dos dois grupos. Use um nível de significância de 5%.

Podemos usar o teste t de Student para comparar as médias dos dois grupos.
'''

grupo1 <- c(1.68, 1.74, 1.80, 1.66, 1.73, 1.79, 1.71, 1.82, 1.69, 1.76,
            1.72, 1.81, 1.75, 1.68, 1.73, 1.69, 1.78, 1.76, 1.70, 1.72,
            1.75, 1.81, 1.79, 1.70, 1.77, 1.71, 1.74, 1.69, 1.73, 1.67,
            1.79, 1.76, 1.72, 1.80, 1.68, 1.73, 1.76, 1.70, 1.81, 1.72,
            1.74, 1.69, 1.77, 1.70, 1.72, 1.75, 1.81, 1.69, 1.73, 1.76)

grupo2 <- c(1.62, 1.58, 1.66, 1.60, 1.63, 1.59, 1.61, 1.57, 1.64, 1.68,
            1.61, 1.63, 1.67, 1.62, 1.60, 1.64, 1.68, 1.63, 1.57, 1.61,
            1.66, 1.63, 1.57, 1.61, 1.64, 1.68, 1.63, 1.59, 1.62, 1.66,
            1.61, 1.63, 1.67, 1.62, 1.60, 1.64, 1.68, 1.63, 1.57, 1.61,
            1.66, 1.63, 1.57, 1.61, 1.64, 1.68, 1.63, 1.59, 1.62, 1.66)

t.test(grupo1, grupo2, var.equal = TRUE, conf.level = 0.95)

'''
15) Um pesquisador deseja verificar se há diferença significativa entre as notas médias de dois grupos de estudantes (grupo 1 e grupo 2). Ele coletou as notas de 30 estudantes em cada grupo e quer realizar um teste t para comparar as médias. No entanto, o pesquisador tem uma hipótese nula de que não há diferença significativa entre as notas médias dos dois grupos. Além disso, se o intervalo de confiança para a diferença entre as médias incluir o valor zero, ele irá concluir que não há diferença significativa. Utilize o R para realizar o teste de hipótese e obter o intervalo de confiança.

Crie dois vetores com as notas dos dois grupos de estudantes:
'''

grupo1 <- c(7.0, 8.5, 6.2, 9.3, 8.1, 7.8, 7.4, 8.9, 7.1, 6.5,
              7.6, 8.2, 7.5, 6.9, 8.4, 7.7, 7.8, 8.1, 7.3, 8.7,
              8.3, 7.2, 8.0, 9.1, 7.6, 7.8, 7.2, 8.5, 6.8, 7.1)

grupo2 <- c(6.8, 6.9, 7.4, 7.6, 7.0, 6.5, 7.5, 6.7, 7.2, 6.4,
            7.8, 6.3, 6.6, 7.1, 6.8, 7.0, 7.5, 6.9, 7.7, 6.7,
            7.4, 7.2, 7.1, 6.8, 7.0, 7.3, 7.5, 6.8, 7.2, 6.6)

t.test(grupo1, grupo2, var.equal = TRUE, conf.level = 0.95)

'''
16) Suponha que queremos gerar uma amostra aleatória de 100 valores de uma distribuição normal com média 10 e desvio padrão 2 utilizando a função rnorm().
'''
set.seed(123)
amostra <- rnorm(100, mean = 10, sd = 2)
amostra

'''
17) Suponha que queremos calcular a probabilidade de obtermos um valor menor ou igual a 10 em uma distribuição normal com média 15 e desvio padrão 3 utilizando a função pnorm().
'''

pnorm(10, mean=15, sd=3)

'''
18) Suponha que queremos encontrar o valor de x que corresponde a uma probabilidade acumulada de 0.75 em uma distribuição normal com média 10 e desvio padrão 2 utilizando a função qnorm().
'''

qnorm(0.75, mean = 10, sd = 2)

'''
19) Suponha que queremos gerar uma amostra aleatória de 100 valores de uma distribuição de Poisson com média 5 utilizando a função rpois().
'''

rpois(100, lambda = 5)

'''
20) Suponha que queremos calcular a probabilidade de obtermos exatamente 3 eventos em uma distribuição de Poisson com média 2 utilizando a função dpois().
'''
dpois(3, lambda = 2)

'''
21) Suponha que estamos analisando o tempo de resposta de um site de comércio eletrônico para realizar uma transação. Sabemos que o tempo de resposta segue uma distribuição normal com média 4 segundos e desvio padrão de 0.5 segundos. Utilizando o R, podemos responder às seguintes questões:
'''
  
# a) Qual a probabilidade de o site levar mais de 5 segundos para processar uma transação?

1 - pnorm(5, mean = 4, sd = 0.5)

# b) Qual o tempo máximo que o site leva para processar uma transação de modo que tenhamos 95% de confiança de que o tempo de resposta não seja ultrapassado?
qnorm(0.95, mean = 4, sd = 0.5)

# c) Suponha que temos uma amostra de 50 transações e queremos estimar a média populacional do tempo de resposta. Qual é o intervalo de confiança para a média populacional com um nível de confiança de 90%?

amostra <- rnorm(50, mean = 4, sd = 0.5)

test <- t.test(amostra, conf.level = 0.90)

test

'''
22) Suponha que um fabricante de chips eletrônicos deseja verificar se a produção de uma determinada máquina está de acordo com as especificações. Para isso, ele realiza um teste de qualidade e mede a resistência elétrica dos chips produzidos pela máquina. O fabricante sabe que a resistência elétrica dos chips segue uma distribuição normal com média de 20 ohms e desvio padrão de 2 ohms.
'''

#a) Suponha que uma amostra aleatória de 25 chips seja selecionada da produção. Qual é a probabilidade de que a média amostral seja menor do que 19 ohms?

pnorm(19, mean = 20, sd = 2/sqrt(25))

#b) Suponha que uma amostra aleatória de 40 chips seja selecionada da produção. Qual é a probabilidade de que a média amostral esteja entre 19,5 ohms e 20,5 ohms?

diff(pnorm(c(19.5, 20.5), mean = 20, sd = 2/sqrt(40)))

#c) Suponha que uma amostra aleatória de 36 chips seja selecionada da produção. Qual é a probabilidade de que a média amostral seja maior do que 21 ohms?

pnorm(21, mean = 20, sd = 2/sqrt(36))

#d) Suponha que uma amostra aleatória de 30 chips seja selecionada da produção e a média amostral seja de 19,5 ohms. Qual é a probabilidade de que a média populacional esteja acima de 20 ohms?

pnorm(20, mean = 19.5, sd = 2/sqrt(30))
  
'''
23) Suponha que em uma empresa de logística, a duração do processo de carregamento de caminhões segue uma distribuição normal com média de 45 minutos e desvio padrão de 10 minutos. Considere os seguintes problemas:
'''
  
#a) Qual é a probabilidade de que um carregamento dure mais de 1 hora (60 minutos)?

1 - pnorm(60, mean=45, sd=10)

#b) Qual é o tempo mínimo que os carregamentos devem durar para que apenas 10% deles precisem de mais tempo?

qnorm(0.1, mean=45, sd=10)

#c) Se um carregamento durou mais do que 1 hora, qual é a probabilidade de que ele tenha durado mais do que 1 hora e meia (90 minutos)?


#d) Se a empresa quer garantir que pelo menos 95% dos carregamentos serão realizados em menos de quanto tempo?

qnorm(0.95, mean=45, sd=10)

#e) Suponha que um carregamento levou 50 minutos para ser concluído. Qual é a probabilidade de que ele esteja acima da média?

1 - pnorm(50, mean=45, sd =10)
  
'''
24) Suponha que um pesquisador queira verificar se uma dieta específica tem efeito na redução do colesterol em pacientes. Ele selecionou 10 pacientes e mediu seus níveis de colesterol antes e após a dieta. Os dados estão armazenados em dois vetores: "antes" e "depois". Utilizando o teste t pareado em R, verifique se a dieta tem um efeito significativo na redução do colesterol, com um nível de significância de 5%.
'''

# Dados de colesterol antes e após a dieta
antes <- c(210, 225, 240, 205, 220, 215, 230, 240, 245, 250)
depois <- c(190, 200, 200, 180, 190, 195, 210, 225, 220, 230)

t.test(antes, depois, paired = TRUE )

25) Suponha que um pesquisador queira verificar se houve uma diferença significativa na pressão arterial de um grupo de pacientes antes e depois de um tratamento. Para isso, o pesquisador mediu a pressão arterial de 20 pacientes antes e depois do tratamento. Utilize um nível de significância de 5%.

a) Qual é a diferença média na pressão arterial antes e depois do tratamento?
  
  # Criar um vetor com as medidas de pressão arterial antes do tratamento
  antes <- c(124, 128, 131, 140, 120, 129, 133, 122, 137, 125, 135, 139, 130, 126, 132, 119, 128, 123, 127, 131)
  
  # Criar um vetor com as medidas de pressão arterial depois do tratamento
  depois <- c(120, 122, 123, 131, 115, 124, 128, 119, 130, 121, 130, 132, 125, 123, 128, 117, 122, 121, 125, 126)
  
  b) Qual é o desvio padrão da diferença na pressão arterial antes e depois do tratamento?
  c) Qual é o valor do t-statistic e do p-value?
  d) Qual é a conclusão do teste de hipótese? Houve diferença significativa na pressão arterial antes e depois do tratamento?
  
  26) Uma empresa deseja avaliar se um novo método de treinamento melhora o desempenho de seus funcionários em uma tarefa específica. Para isso, selecionou aleatoriamente 10 funcionários e aplicou o novo método de treinamento. Em seguida, avaliou o desempenho desses mesmos 10 funcionários antes e depois do treinamento, utilizando uma escala de pontuação. Utilizando o R, faça um teste t pareado para verificar se houve melhora significativa no desempenho após a aplicação do novo método de treinamento. Use um nível de significância de 5%.

Primeiramente, vamos criar um conjunto de dados fictício para representar as pontuações dos funcionários antes e depois do treinamento:
  
  antes <- c(6, 7, 5, 6, 8, 7, 5, 6, 7, 5)
depois <- c(7, 8, 6, 7, 9, 8, 6, 7, 8, 6)

27) Suponha que a altura de uma população siga uma distribuição normal com média 170cm e desvio padrão 5cm. Qual a probabilidade de escolher uma pessoa ao acaso e ela ter altura maior que 180cm?
  
  28) Um fabricante de lâmpadas afirma que a vida média de suas lâmpadas é de 800 horas, com um desvio padrão de 50 horas. Uma amostra aleatória de 36 lâmpadas é selecionada. Qual a probabilidade de que a vida média da amostra seja menor que 780 horas?
  
  29) Uma loja de roupas afirma que o tempo médio de espera na fila do caixa é de 5 minutos, com um desvio padrão de 1 minuto. Uma amostra aleatória de 25 clientes é selecionada. Qual a probabilidade de que a média amostral do tempo de espera na fila seja maior do que 6 minutos?

'''
30) Um fabricante de equipamentos eletrônicos afirma que apenas 2% de seus produtos apresentam defeitos. Uma amostra de 500 equipamentos é selecionada aleatoriamente. Qual a probabilidade de que no máximo 10 equipamentos apresentem defeitos? Apresente a solução utilizando probabilidade e um gráfico de distribuição de probabilidade.

Para resolver este problema, utilizaremos a distribuição binomial, já que estamos interessados no número de equipamentos com defeito em uma amostra de tamanho fixo. A probabilidade de sucesso (equipamento sem defeito) é p = 0,98 e a probabilidade de fracasso (equipamento com defeito) é q = 0,02.

A probabilidade de no máximo 10 equipamentos apresentarem defeitos pode ser calculada pela soma das probabilidades de 0 a 10 equipamentos apresentarem defeitos:
  
  P(X ≤ 10) = P(X = 0) + P(X = 1) + ... + P(X = 10)
'''  

# ESTA ERRADO
probabilidade <- sapply( 0:10, function(x) dbinom(x, size=500, prob=0.98))
?dbinom
total
        

