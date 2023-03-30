setwd('~/ipbg123/aula07')

# Importação do dados 
fish_survey <- read.csv('fish_survey.csv', header=TRUE, stringsAsFactors = TRUE)

head(fish_survey)
tail(fish_survey)
str(fish_survey)
summary(fish_survey)

# Instalar pacote 
install.packages('dplyr')
install.packages('tidyr')
library(dplyr)
library(tidyr)

# combinação das colunas Trouth, Perch, Stickleback em
# uma coluna chamada Species e quantidade listadas em Abundance
fish_survey_long <- gather(fish_survey, Species, Abundance, 4:6)
head(fish_survey_long)

# Reverso de gather realizado no comando anterior 
fish_survey_orginal <- spread(fish_survey_long, Species, Abundance)
head(fish_survey_orginal)

# Importar water e gps 
water <- read.csv('water_data.csv', header = TRUE, stringsAsFactors = TRUE)
gps <- read.csv('gps_data.csv', header = TRUE, stringsAsFactors = TRUE)

# Combinação dos datasets fish_survey + water + gps 
fish_water <- inner_join(fish_survey, water, by = c('Site', 'Month'))
head(fish_survey)
head(water)
head(fish_water)
fish_water_gps <- inner_join(fish_water, gps, by = c('Site', 'Transect'))
head(fish_water)
head(gps)
head(fish_water_gps)

# Carga do bird behaviour
bird_behaviour <- read.csv('bird_behaviour.csv', head=TRUE, 
                            stringsAsFactors = TRUE)

str(bird_behaviour)

# Criar variável/coluna chamada log_FID 
bird_behaviour$log_FID <- log(bird_behaviour$FID)
bird_behaviour <- mutate(bird_behaviour, log_FID = log(FID))

head(bird_behaviour)

# Separação de colunas usando separador "_"
bird_behaviour <- separate(bird_behaviour, Species, 
                           c('Domain', 'Species'), sep = '_', 
                           remove = TRUE)
head(bird_behaviour)

# União de colunas em apenas uma nova coluna usando o separador "_"
bird_behaviour <- unite(bird_behaviour, "Species", c(Domain, Species), 
                        sep = '_', remove = TRUE)
head(bird_behaviour)

# Filtro Sex == "male"
bird_behaviour[bird_behaviour$Sex == 'male', ]
subset(bird_behaviour, Sex == 'male')
subset(bird_behaviour, Sex == 'male', select = c(Ind, Species))
bird_behaviour[bird_behaviour$Sex == 'male', c('Ind', 'Species')]
slice(bird_behaviour, 3:5)
bird_behaviour[c(3:5), ]

# Amostras
# 30%
sample_frac(bird_behaviour, size = 0.3, replace = FALSE)
# 23 itens 
sample_n(bird_behaviour, size = 30, replace = FALSE)

# sumarizaçoes 
summary(bird_behaviour)
summarize(bird_behaviour, mean_disturbance = mean(Disturbance))

