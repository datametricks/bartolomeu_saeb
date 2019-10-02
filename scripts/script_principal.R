# Header ----
#
# Nome:        script_principal.R
#
# Titulo:      Script Principal do Projeto
#
# Verss?o:     1.0
# Data:        2019-Jan-25
# Autor:       Henrique C. Costa
# Host :       DataMeTricks Research
# License:     GPL (>=2)
#
# Descricao:   Script para analisar os dados.
#
# Detalhes:    Este script faz a extracao e tratamento dos dados
#
# Depende:     A linguagem de programa??o R (3.5) e todas as bibliotecas listadas.
# 
# Pacotes:     reshape2, tidyverse, scales, extrafont, ggrepel
#
##-------------------------------------------------------------------------------------------##



## restaurar os dados salvos no espa?o de trabalho do usu?rio
load("./dados/dados.rda") ## isso aqui ? equivalente a:
## load("all.rda", .GlobalEnv)


# C?digo para verificar se o pacote est? instalado,
# se n?o, o pacote ser? instalado
if (!require(tidyverse)) install.packages("tidyverse")
# Install from CRAN
# install.packages("tidyverse")

# Carrega a cole??o TidyVerse
library(tidyverse)


# Filtra todos as questoes para o Brasil
BR_QST <- dados[,c(-1, -4, -5, -6, -7, -8)]


# Apenas os que preencheram os questionario.
BR_01 <- BR_QST %>%
  filter(IN_PREENCHIMENTO_QUESTIONARIO == 1)


# Contabiliza o numero de linhas
count(BR_QST)

# Contabiliza o numero de linhas
count(BR_01)


# A linha de codigo abaixo  b?sicamente calcula a
# porcentagem de question?rios preenchidos em Mato Grosso
count(BR_01)/count(BR_QST)*100
# 78,79%, ou aprimximadamente 79%

#-------------------------------------------------------------


# Filtra todos as questoes de Mato Grosso
MT_QST <- dados %>%
  filter(ID_UF == 51)

# Apenas os que preencheram os questionario.
MT_01 <- MT_QST %>%
  filter(ID_UF == 51, IN_PREENCHIMENTO_QUESTIONARIO == 1)


# Contabiliza o numero de linhas
count(MT_QST)

# Contabiliza o numero de linhas
count(MT_01)


# A linha de c?digo abaixo  b?sicamente calcula a
# porcentagem de question?rios preenchidos em Mato Grosso
count(MT_01)/count(MT_QST)*100
# 85,90%, ou aprimximadamente 86%



#---------------------------------------------------------------
# Mostrar as estatistica das resposta
# para cada questao

# Resumo Estatistico para todas as questoes nivel Brasil
summary(BR_QST)

# Resumo Estatistico apenas dos que preencheram o questionario
summary(BR_01)





# Resumo Estatistico para todas as questoes apenas para Mato Grosso
summary(MT_QST)

# Resumo Estatistico apenas dos que preencheram o questionario
summary(MT_01)



#------------------------------------------------------------------





