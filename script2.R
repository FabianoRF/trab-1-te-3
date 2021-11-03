# Grupo: Fabiano, Lucas e Carlos

# Dataset escolhido: 2021 Olympics in Tokyo
# link: https://www.kaggle.com/arjunprasadsarkhel/2021-olympics-in-tokyo


# Setando ambiente de trabalho
setwd("C:/te3")
getwd()


# Instalando e Carregando Pacotes
install.packages("readr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")
library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)
library(stringr)

# dataset f1

# Carregando dados


results <- read.table("f1/results.csv", sep=",", header=TRUE)
drivers <- read.table("f1/drivers.csv", sep=",", header=TRUE)
constructors <- read.table("f1/constructors.csv", sep=",", header=TRUE)
driver_standings <- read.table("f1/driver_standings.csv", sep=",", header=TRUE)
seasons <- read.table("f1/seasons.csv", sep=",", header=TRUE)



# Exibindo os dados

View(results)
View(drivers)
View(constructors)
View(driver_standings)
View(seasons)


# pré-processamento
# strings vazias, espaços em branco
coaches$Event = str_replace_all(coaches$Event, "^$", "_")
coaches$Name = str_replace_all(coaches$Name, "\\s", "_")
coaches$NOC = str_replace_all(coaches$NOC, "\\s", "_")
athletes$NOC = str_replace_all(athletes$NOC, "\\s", "_")
athletes$Discipline = str_replace_all(athletes$Discipline, "\\s", "_")
athletes$Name = str_replace_all(athletes$Name, "^$", "_")



# pilotos com mais pole positions, mais voltas rapidas

# 



p_plm <- ggplot(plm, aes(x = (Month), y = AverageTemperature, color = as.factor(Year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Palmas") +
  theme(plot.title = element_text(size = 18))


p_plm



# ideias
# -----------------------------------------------------------------------------
# pilotos com mais pole positions, mais voltas rapidas
# piloto com mais vitorias/podios
# paises com mais vitorias/voltas rapidas
# equipes mais vitoriosas, ou mais rápidas
# -----------------------------------------------------------------------------




