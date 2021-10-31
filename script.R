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

# dataset tokyo

# Carregando dados: atlestas, tecnicos, 
athletes <- read.csv2("olimp/Athletes.csv")
coaches <- read.csv2("olimp/Coaches.csv")
entriesGender <- read.csv2("olimp/EntriesGender.csv") # tabela de detalhes sobre o esporte e numero de atletas femininos e masculinos
medals <- read.csv2("olimp/Medals.csv")
teams <- read.csv2("olimp/Teams.csv")

# Exibindo os dados

View(athletes)
View(coaches)
View(entriesGender)
View(medals)
View(teams)


# pré-processamento
# strings vazias, espaços em branco
coaches$Event = str_replace_all(coaches$Event, "^$", "_")
coaches$Name = str_replace_all(coaches$Name, "\\s", "_")
coaches$NOC = str_replace_all(coaches$NOC, "\\s", "_")
athletes$NOC = str_replace_all(athletes$NOC, "\\s", "_")
athletes$Discipline = str_replace_all(athletes$Discipline, "\\s", "_")
athletes$Name = str_replace_all(athletes$Name, "^$", "_")


View(coaches)






# ideias

# exibir medalhas por pais?
# Como usar o grafo?
# Exibir medalhistas dos paises de acordo com sexo. Paises com mais medalhas femininas poe ex



# -----------------------------------------------------------------------------
# dataset spotify


spotify <- read.csv2("spotify.csv")
View(spotify)


# ideias


