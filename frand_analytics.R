# Introdução ####

# Este script detalha o processo de normalização das variáveis e uso de dummy
# para o dataset de fraude bancária.

# Definindo diretório ####
setwd('C:/python_scripts/fraud')
getwd()

# Carga dos pacote Caret ####

library(caret) 

# Carga dos datasets ####

# Carga do dataset 1 e 2
bd <- read.csv('bd_fraudPython.csv') #1.000.000 registros

# Verifica dataset e os tipos de dados
View(bd)
str(bd)

# Pré-Processamento ####
# Algumas variáveis estão com num, mas são catergorias
# Exemplo de algumas abaixo
sapply(X = bd['income'], FUN = 'unique')
sapply(X = bd['month'], FUN = 'unique')

# Converte variáveis em tipo fator
bd['income'] <- as.character(bd$income)
bd['customer_age'] <- as.character(bd$customer_age)
bd['month'] <- as.character(bd$month)

# Confere os tipos de dados novamente
str(bd)

# Função para normalização dos dados
bd[c('name_email_similarity','current_address_months_count','days_since_request'              ,'intended_balcon_amount','zip_count_4w', 'velocity_6h', 'bank_branch_count_8w',
     'credit_risk_score','session_length_in_minutes')] <- 
  scale(
    bd[c('name_email_similarity','current_address_months_count','days_since_request'          ,'intended_balcon_amount','zip_count_4w', 'velocity_6h', 'bank_branch_count_8w',
     'credit_risk_score','session_length_in_minutes')])

# Varíavel Dummy ####

# Neste etapa vamos separar a variável preditora (target) do dataset
# A função exige que seja feita dessa forma, como se fosse um treino de modelo

# Separa a variável target
bd_dmy <- bd[,2:26]

# Criação de variáveis dummy com todos os atributos do dataset
# Função considera apenas os numéricos
dmy <- dummyVars(" ~ .", data = bd_dmy, fullRank = T)

# Cria dataset unindo a variável target com os demais atributos
dat_modelo <- data.frame(predict(dmy, newdata = bd_dmy))

# Dataset com a variável dummy para os atributos categóricos
View(dat_modelo)

# Inclusão da variável target no dataset
bd_final <- dat_modelo
bd_final['fraud_bool'] <- bd[,1]
View(bd_final)
str(bd_final)

# Export csv com os dados
write.csv2(bd_final, 'bd_final.csv', row.names = FALSE)