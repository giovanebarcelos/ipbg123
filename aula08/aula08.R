setwd('~/ipbg123/aula08')
sparrows <- read.csv("sparrows.csv", header = TRUE, stringsAsFactors = TRUE)

// Analisar dados
names(sparrows)
str(sparrows)
summary(sparrows)

// Histograma
hist(sparrows$Tarsus)

// Apresentar gráficos em 1 linha e duas colunas
par(mfrow = c(1,2))

// Histograma com parametros customizados
hist(sparrows$Tarsus, breaks = 30, col = "blue")
hist(sparrows$Tarsus, breaks = 30, col = "green", freq = FALSE)

par(mfrow = c(1,1))
hist(sparrows$Tarsus, breaks = 30, col = "green", freq = FALSE)

lines(density(sparrows$Tarsus), col = "red", lwd = 2)

# Plot - Relação entre duas variáveis 
plot(sparrows$Wing, sparrows$Tarsus)

# Customização plot
plot(sparrows$Wing, sparrows$Tarsus, xlim = c(50,70), pch = 15, col="blue", 
     cex=0.5)

# Plot com linha 
data('pressure')
plot(pressure$temperature, pressure$pressurem, type = 'l')

# Boxplot 
boxplot(Wing ~ Sex, data = sparrows, 
        xlab = "Sexo", ylab = "Wing", 
        col = c("red", "blue"), 
        ylim = c(50,70), 
        main = "Boxplot")

# dev.print 
boxplot(Wing ~ Sex, data = sparrows)
dev.print(device=pdf, file='sparrows.pdf')
dev.off()

# Vários gráficos em uma página PDF 
par(mfcol = c(2,2))
plot(sparrows$Wing, sparrows$Tarsus, 
     col = "green")

plot(sparrows$Wing, sparrows$Tarsus, 
     col = "green")

boxplot(Wing ~ Sex, data = sparrows, xlab = "Sex", ylab = "Wing", 
        main = "BoxPlot", col = c("red", "blue"))

boxplot(Wing ~ Sex + Species, data = sparrows, xlab = "Sex", ylab = "Wing", 
        main = "BoxPlot", col = c("blue", "green"))

dev.print(device = pdf, file = "multiGraphs.pdf")
dev.off()

# Histograma no ggplot 
library(ggplot2)
ggplot(sparrows, aes(Tarsus)) + 
  geom_histogram(col = "blue", binwidth = 0.2) + 
  xlab("Tarsus") + 
  ylab("Frequência")

# Dispersão = Scatterplot 
ggplot(sparrows, aes(x=Wing, y = Tarsus)) + 
  geom_point()

# Boxplots 
pdf("boxplot.pdf")
myPlot <- ggplot(sparrows, aes(Sex, Wing, fill = Sex)) + geom_boxplot()
print(myPlot)
dev.off()

# BoxPlot salvando com ggsave
ggplot(sparrows, aes(Sex, Wing, fill = Sex)) + geom_boxplot()
ggsave("boxplot1.pdf")

# BoxPlot com customização theme
ggplot(sparrows, aes(Sex, Wing, fill = Sex)) + 
       geom_boxplot() + 
       ggtitle("Boxplot ggplot") + 
       theme(plot.title = element_text(hjust = 0.5))
