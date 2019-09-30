


## restaurar os dados salvos no espaço de trabalho do usuário
load("dados.rda") ## isso aqui é equivalente a:
## load("all.rda", .GlobalEnv)


# Código para verificar se o pacote está instalado,
# se não, o pacote será instalado
if (!require(tidyverse)) install.packages("tidyverse")
# Install from CRAN
# install.packages("tidyverse")

# Carrega a coleção TidyVerse
library(tidyverse)


# Filtra todos as questões de Mato Grosso
mt_01 <- dados %>%
  filter(ID_UF == 51)

# Apenas os que preencheram os questionário.
mt_02 <- dados %>%
  filter(ID_UF == 51, IN_PREENCHIMENTO_QUESTIONARIO == 1)


# Contabiliza o numero de linhas
count(mt_01)

# Contabiliza o numero de linhas
count(mt_02)


# A linha de código abaixo  básicamente calcula a
# porcentagem de questionários preenchidos em Mato Grosso
count(mt_02)/count(mt_01)*100
# 85,90%, ou aprimximadamente 86%


# Mostrar as estatística das resposta
# para cada questão
summary(mt_01)
summary(mt_02)


dat_02 <- mt_02[,c(-3,-4,-5,-6, -7, -8, -10)]
test <- print(mt_02[1:15952,8:132])


# Essa funcao "gather()" do tidyr - tidyverse
# Ela faz uma transposicao de colunas e para linhas
test_02 <- gather(mt_02, QST_X, TX_RESP_QST, 8:132)
testando <- gather(dat_02, QST_X, TX_RESP_QST, 4:128)
# Aqui foi criado o vetor/coluna "quest"
# onde agregou todas as 125 questoes
# E criou também o vetor/caluna "resp"
# onde agregou todas as respostas referentes a cada questao





