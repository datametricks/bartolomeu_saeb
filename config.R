# Header ----
#
# Nome:        Config_Data.R
#
# Título:      Configure project Data
#
# Verssão:     1.0
# Data:        2019-Jan-25
# Autor:       Henrique C. Costa
# License:     GPL (>=2)
#
# Descrição:   Script para download dos dados e carregamento.
#              Favor Executar apenas uma vez.
#
# Detalhes:    Este script faz download dos dados diretamente do internet via link
#              do site do SAEB, para os dados de 2017, da Prova Brasil. Além disso
#              ao baixar os dados em formato .zip, faz a descompactação dos dados
#              e acessa a pasta onde foi extraído e carrega a planilha dos referente
#              ao questionário respondido pelo professor.
#
#
# Depende:     A linguagem de programação R (3.5) e todas as bibliotecas listadas.
#
##-------------------------------------------------------------------------------------------##

#------------------------------------------
#   I M P O R T A N T E ! ! !
#
#   ESTE SCRIPT DEVE SER EXECUTADO
#   APENAS UMA ÚNICA VEZ!
#------------------------------------------


# Criando um valor único que representa o link para download
url <-"http://download.inep.gov.br/microdados/microdados_saeb_2017.zip"

# criando os diretório para download
temp <- tempfile()

# criando os diretório para extração
temp2 <- tempfile()


# Download dos dados para o diretório "temp"
download.file(url, temp)

# Extraindo os dados zipado do diretório "temp" para "temp2"
unzip(zipfile = temp, exdir = temp2)

# Importando os dados do diretório "temp2"
# Os dados são dos testes do professor
dados <- read.csv(file.path(temp2, "./DADOS/TS_PROFESSOR.csv"))

# Ver os dados, se foram carregados corretamente
View(data)


# salvar os dados em formato .Rdata para carrega-los
# mais facilmente, nos próximos scripts.
save(dados, file = "dados.rda")
# ou se preferir ...
# save(dados, file = "dados.RData")

# remover as variáveis
rm(data, temp, temp2, url)


#--------------------------------------------------------


# sessionInfo()

# Sys.info()

#---------------------------------------------------------------------------
############################################################################
