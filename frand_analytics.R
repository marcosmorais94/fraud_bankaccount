# Introdução ####

# Este script detalha o processo de normalização das variáveis e uso de dummy
# para o dataset de fraude bancária.

# Definindo diretório ####
setwd('C:/python_scripts/fraud')
getwd()

# Carga dos datasets ####

# Carga do dataset 1 e 2
bd <- read.csv('bd_fraudPython.csv') #1.000.000 registros

# Verifica dataset e os tipos de dados
View(bd)
str(bd)


# Pré-Processamento ####
# Nesta etapa será removido registros nulos de algumas variáveis e
# a normalização dos dados

#workclass, occupation e native country possuem valores como ?
sum(ifelse(bd$workclass == ' ?', 1, 0)) #2.799 registros
sum(ifelse(bd$occupation == ' ?', 1, 0)) #2.809 registros
sum(ifelse(bd$native.country == ' ?', 1, 0)) #857 registros

# Remoção variável com mais registros inválidos
bd_modelo <- bd_modelo[bd_modelo$occupation != ' ?',]