# Definindo diretório ####
setwd('C:/FCD/R/Kaggle/Fraud')
getwd()

# Carga dos datasets ####

bd <- read.csv('Base.csv') #32.561 registros
View(bd)

# Carga dos pacotes ####

library(ggplot2)
library(dplyr)
library(caret)
library(RColorBrewer)
library(forcats)
library(ROCR) 
library(e1071)
library(performanceEstimation)
