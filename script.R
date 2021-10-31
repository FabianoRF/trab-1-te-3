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


# Carregando dados: atlestas, tecnicos, 
athletes <- read.csv2("olimp/Athletes.csv")
coaches <- read.csv2("Coaches.csv")
# tabela de detalhes sobre o esporte e numero de atletas femininos e masculinos
entriesGender <- read.csv2("EntriesGender.csv")
medals <- read.csv2("Medals.csv")
teams <- read.csv2("Teams.csv")

# Exibindo os dados

head(athletes)
head(coaches)
head(entriesGender)
head(medals)
head(teams)






