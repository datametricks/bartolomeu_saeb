##################################################################
#
# Autor  : Henrique C. Costa
# Hosted : Data MeTricks Research
#
# Script : Draft Version (versao de rascunho)
# 
#-----------------------------------------------------------------

dat_02 <- MT_01[,c(-3,-4,-5,-6, -7, -8, -10)]
test <- print(MT_01[1:15952,8:132])


# Essa funcao "gather()" do tidyr - tidyverse
# Ela faz uma transposicao de colunas e para linhas
test_02 <- gather(mt_02, QST_X, TX_RESP_QST, 8:132)
testando <- gather(dat_02, QST_X, TX_RESP_QST, 4:128)
# Aqui foi criado o vetor/coluna "quest"
# onde agregou todas as 125 questoes
# E criou tamb?m o vetor/caluna "resp"
# onde agregou todas as respostas referentes a cada questao



# Extraindo as Questões

# pacote pra ler arquivos .xlsx
library(readxl)

# variavel dicionario
dicionario <- read_excel("./dicionario/Dicionario_ANEB_Prova_Brasil_2017.xlsx", sheet = "TS_PROFESSOR")

# Separando as linhas do dataframe pelas
# pelas suas posicoes, ou seja, filtrando
# apenas o que eu preciso extrair dos dados
TX_RESP_Q000 <- slice(dicionario, 46:171)

# Retirando colunas indesejadas
TX_RESP_Q000 <- TX_RESP_Q000[,c(-2, -3, -4, -5, -18)]




