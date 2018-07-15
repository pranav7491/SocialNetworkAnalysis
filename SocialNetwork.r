install.packages("leaflet")
install.packages("treemap")
install.packages("tm")
install.packages("tidytext")
install.packages("wordcloud")
install.packages("kableExtra")
install.packages("formattable")
install.packages("FactoMineR")
install.packages("ca")


library(FactoMineR)
library("readxl")
library(ggplot2)
library(leaflet)
library(treemap)
library(corrplot)
library(tm)
library(tidytext)
library(tidyr)
library(wordcloud)
library(knitr)
library(kableExtra)
library(formattable)
library(dplyr)
library(ca)
#options(knitr.table.format = "html")



df <- read.csv("C:/Users/prana/Desktop/Econ/R_codes/Correspondance.csv",header=TRUE,row.names=1)

df <- na.omit(df)


x2 <- as.matrix(df)
y <- as.matrix(colnames(df))

prop.table(as.matrix(df),1)
prop.table(as.matrix(df),2)


ca(df)
plot(ca(df))



r.c <- ca(df)$rowcoord
c.c <- ca(df)$colcoord

par(ask=TRUE)


xrange <- range(r.c[,1]*1.5,c.c[,1]*1.5)
yrange <- range(r.c[,2]*1.5,c.c[,2]*1.5)

plot(xrange,yrange,type='n', xlab='Dimension 1', ylab='Dimension 2', main='Correspondance Plot')


#Yearsofexpwebsites

df2 <- read.csv("C:/Users/prana/Desktop/Econ/R_codes/Correspondance2.csv",header=TRUE,row.names=1)

df2 <- na.omit(df2)

dev.off()

ca(df2)
plot(ca(df2))
