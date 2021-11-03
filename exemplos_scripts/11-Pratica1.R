# Big Data na Pratica 1 - Analisando a Temperatura Media nas Cidades Brasileiras

setwd("C:/TEIII/Aula06")
getwd()

# Dataset:
# Berkeley Earth
# http://berkeleyearth.org/data
# TemperaturasGlobais.csv ~ 78 MB (zip) ~ 496 MB (unzip)
# FaÁa o download do arquivo zip no link abaixo e descompacte na mesma pasta onde est· este script. 

# Instalando e Carregando Pacotes
# Obs: os pacotes precisam ser instalados apenas uma vez. Se j√° instalou em outros scripts, n√£o √© necess√°rio instalar novamente!
install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)


# Carregando os dados (Usando um timer para comparar o tempo de carregamento com diferentes fun√ß√µes)

# Usando read.csv2()
system.time(df_teste1 <- read.csv2("TemperaturasGlobais.csv"))


# Usando read.table()
system.time(df_teste2 <- read.table("TemperaturasGlobais/TemperaturasGlobais.csv"))


# Usando fread()
?fread
system.time(df <- fread("TemperaturasGlobais.csv"))


# Criando subsets dos dados carregados
cidadesBrasil <- subset(df, Country == 'Brazil')
cidadesBrasil <- na.omit(cidadesBrasil)
head(cidadesBrasil)
nrow(df)
nrow(cidadesBrasil)
dim(cidadesBrasil)


# Preparacao e Organizacao

# Convertendo as Datas
cidadesBrasil$dt <- as.POSIXct(cidadesBrasil$dt,format='%Y-%m-%d')
cidadesBrasil$Month <- month(cidadesBrasil$dt)
cidadesBrasil$Year <- year(cidadesBrasil$dt)

# Carregando os subsets

# Palmas
plm <- subset(cidadesBrasil, City == 'Palmas')
plm <- subset(plm, Year %in% c(1796,1846,1896,1946,1996,2012))

# Curitiba
crt <- subset(cidadesBrasil, City == 'Curitiba')
crt <- subset(crt, Year %in% c(1796,1846,1896,1946,1996,2012))

# Recife
recf <- subset(cidadesBrasil, City=='Recife')
recf <- subset(recf,Year %in% c(1796,1846,1896,1946,1996,2012))


# Construindo os Plots
p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("MÍs")+
  ylab("Temperatura MÈdia") +
  scale_color_discrete("") +
  ggtitle("Temperatura MÈdia ao longo dos anos em Palmas") +
  theme(plot.title = element_text(size = 18))

p_crt <- ggplot(crt, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("MÍs")+
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura MÈdia ao longo dos anos em Curitiba") +
  theme(plot.title = element_text(size = 18))

p_recf <- ggplot(recf, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("MÍs")+
  ylab("Temperatura MÈdia") +
  scale_color_discrete("") +
  ggtitle("Temperatura MÈdia ao longo dos anos em Recife") +
  theme(plot.title = element_text(size = 18))


# Plotando
p_plm
p_crt
p_recf


