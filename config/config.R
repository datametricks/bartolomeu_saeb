# Header ----
#
# Nome:        Config_Data.R
#
# T?tulo:      Configure project Data
#
# Verss?o:     1.0
# Data:        2019-Jan-25
# Autor:       Henrique C. Costa
# License:     GPL (>=2)
#
# Descri??o:   Script para download dos dados e carregamento.
#              Favor Executar apenas uma vez.
#
# Detalhes:    Este script faz download dos dados diretamente do internet via link
#              do site do SAEB, para os dados de 2017, da Prova Brasil. Al?m disso
#              ao baixar os dados em formato .zip, faz a descompacta??o dos dados
#              e acessa a pasta onde foi extra?do e carrega a planilha dos referente
#              ao question?rio respondido pelo professor.
#
#
# Depende:     A linguagem de programa??o R (3.5) e todas as bibliotecas listadas.
# 
# Pacotes:     reshape2, tidyverse, scales, extrafont, ggrepel
#
##-------------------------------------------------------------------------------------------##

#------------------------------------------
#   I M P O R T A N T E ! ! !
#
#   ESTE SCRIPT DEVE SER EXECUTADO
#   APENAS UMA ?NICA VEZ!
#------------------------------------------


# Criando um valor ?nico que representa o link para download
url <-"http://download.inep.gov.br/microdados/microdados_saeb_2017.zip"

# criando os diret?rio para download
temp <- tempfile()

# criando os diret?rio para extra??o
temp2 <- tempfile()


# Download dos dados para o diret?rio "temp"
download.file(url, temp)

# Extraindo os dados zipado do diret?rio "temp" para "temp2"
unzip(zipfile = temp, exdir = temp2)

# Importando os dados do diret?rio "temp2"
# Os dados s?o dos testes do professor
dados <- read.csv(file.path(temp2, "./DADOS/TS_PROFESSOR.csv"))

# Ver os dados, se foram carregados corretamente
View(dados)


# salvar os dados em formato .Rdata para carrega-los
# mais facilmente, nos proximos scripts.
save(dados, file = "./dados/dados.rda")
# ou se preferir ...
# save(dados, file = "dados.RData")

# remover as vari?veis
rm(dados, temp, temp2, url)


#--------------------------------------------------------


# sessionInfo()

# Sys.info()

#---------------------------------------------------------------------------
############################################################################


# Codigo para verificar se o pacote esta instalado,
# se nao, o pacote sera instalado
pkgs <- c("reshape2", "tidyverse", "scales", "extrafont", "ggrepel")
if(!require(pkgs)) install.packages(pkgs)
# Install from CRAN
# install.packages("tidyverse")

# Carrega a colecao TidyVerse
library(tidyverse)
# um exemplo


############################################################################
#
# Configurando o tema:
# Baixar e importar fonte: Source Sans Pro
#-------------------------------------------------------------------


# Criando um valor único que representa o link para download da fonte
url <-"https://fonts.google.com/download?family=Source%20Sans%20Pro"

# criando os diretório para download
temp <- tempfile()

# criando os diretório para extração 
temp2 <- tempfile()


# Download dos dados para o diretório "temp"
download.file(url, temp)

# Extraindo os dados zipado do diretório "temp" para "temp2"
unzip(zipfile = temp, exdir = temp2)
# Caso esta linha não funcione, favor acessar o link:
# https://fonts.google.com/download?family=Source%20Sans%20Pro
# E instalar a fonte manualmente.

# Pacote necessário para criar os plots
library(ggplot2)

# Pacote para customizar a fonte nos plots
library(extrafont)

# funcao para importar a fonte
font_import("./")
y
# ao importar, o sistema pedira 
# que confirme a importacao
# rode essa letra "y" para confirmar


# carregar as fontes para customizacao
loadfonts(device = "win")



# criar temas de plotagem personalizados para análise de dados baseado no Storytelling da DataMeTricks
datametricks_theme <-  theme(text=element_text(family="Source Sans Pro"),
                             plot.title = element_text(size = 15, color = "black", face = "bold", hjust = 0),
                             plot.subtitle = element_text(size = 11, hjust = 0, color="#666666"),
                             plot.caption = element_text(size = 9, hjust = 0, vjust = 0, colour = "grey50"),
                             axis.title.y = element_text(face = "bold", color = "gray30"),
                             axis.title.x = element_text(face = "bold", color = "gray30", vjust = -0.25),
                             axis.text.y = element_text(size = 9, color = "grey15"),
                             axis.text.x = element_text(size = 9, color = "grey15", vjust = 0.5),
                             panel.background = element_blank(),
                             panel.border = element_blank(),
                             panel.grid = element_blank(),
                             strip.background = element_rect(fill = "white", colour = "grey75"),
                             strip.text.y = element_text(face = "bold"),
                             axis.line.x = element_line(colour = "grey75"),
                             axis.line.y = element_line(colour = "grey75"),
                             axis.line = element_line(colour = "grey75")
)




# remover as vari?veis
rm(temp, temp2, url)


##-------------------------------------------------------------------------------------------##
#
# Pronto, agora é só utilizar o tema customizado da DataMeTricks
#
##-------------------------------------------------------------------------------------------##

