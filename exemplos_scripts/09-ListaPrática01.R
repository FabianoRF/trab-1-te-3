#Lista de Atividades - Aula Prática


setwd("C:/TEIII_2/Aula7")
getwd()

# Baseado no Google Chart (visualização de dados na web)
# googlevis Ã© um pacote que fornece interface entre R e o Google Charts
# Utiliza JavaScript e arquivos JSON. Os dados são transformados em formato JSON
# O resultado Ã© gerado em HTML5 ou Flash
# Pode-se criar os mais variados tipos de gráficos e mapas. Inclusive Google Maps
# VocÃª pode incorporar os gráficos criados em páginas HTML ou apps
# Verifique termos de uso, antes de utilizar

install.packages("googleVis")
library(googleVis)
?googleVis


# Criando um Datafrane
df = data.frame(País = c("BR", "CH", "AR"), 
                Exportações = c(10,13,14), 
                Importações = c(23,12,32))


# Gráfico de Linha
Line <- gvisLineChart(df)
plot(Line)


# Gráfico de Barras
Column <- gvisColumnChart(df)
plot(Column)


# Gráfico de Barras Horizontais
Bar <- gvisBarChart(df)
plot(Bar)


# Gráfico de Pizza
Pie <- gvisPieChart(CityPopularity)
plot(Pie)


# Gráficos Combinados
Combo <- gvisComboChart(df, xvar = "País",
                        yvar = c("Exportações", "Importações"),
                        options = list(seriesType = "bars",
                                       series='{1: {type:"line"}}'))
plot(Combo)


# Scatter Chart
Scatter <- gvisScatterChart(women, 
                            options=list(
                              legend="none",
                              lineWidth=2, pointSize=0,
                              title="Women", vAxis="{title:'weight (lbs)'}",
                              hAxis="{title:'height (in)'}", 
                              width=300, height=300))
plot(Scatter)


# Bubble
Bubble <- gvisBubbleChart(Fruits, idvar="Fruit", 
                          xvar="Sales", yvar="Expenses",
                          colorvar="Year", sizevar="Profit",
                          options=list(
                            hAxis='{minValue:75, maxValue:125}'))
plot(Bubble)


# Customizando
M <- matrix(nrow=6,ncol=6)
M[col(M)==row(M)] <- 1:6
dat <- data.frame(X=1:6, M)
SC <- gvisScatterChart(dat, 
                       options=list(
                         title="Customizing points",
                         legend="right",
                         pointSize=30,
                         series="{
                         0: { pointShape: 'circle' },
                         1: { pointShape: 'triangle' },
                         2: { pointShape: 'square' },
                         3: { pointShape: 'diamond' },
                         4: { pointShape: 'star' },
                         5: { pointShape: 'polygon' }
                         }"))
plot(SC)


# Gauge
Gauge <- gvisGauge(CityPopularity, 
                   options=list(min=0, max=800, greenFrom=500,
                                greenTo=800, yellowFrom=300, yellowTo=500,
                                redFrom=0, redTo=300, width=400, height=300))
plot(Gauge)


# **** ATIVIDADE ****
# Você deverá criar 10 gráficos (seguindo os exemplos acima) a partir da base 
# de dados que utilizamos na última aula (TemperaturasGlobais).
#
# Você é livre para escolher quais dados (variáveis) e quais gráficos utilizar,
# desde que tenha ao menos um plot de cada gráfico mostrado acima.

# Atividade individual
# Entrega até 10/10/2021 às 23h55
# Valor: 1,0 ponto
# O que será entregue: Somente o script .R