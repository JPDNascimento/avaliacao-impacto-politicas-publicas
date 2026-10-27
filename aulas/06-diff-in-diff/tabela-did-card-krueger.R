# Tabela 2x2 de Diferenças em Diferenças — Card & Krueger (1994)
#
# Calcula "na mão" o estimador DiD comparando o emprego em restaurantes de
# fast food de New Jersey (tratados: salário mínimo subiu de US$ 4,25 para
# US$ 5,05 em abril de 1992) e do leste da Pensilvânia (controle).

# install.packages("haven") # instale o pacote caso necessário
library(haven)

d <- read_dta("../../dados/CK1994_longformat.dta")

# Descrição das variáveis usadas
# emptot     = variável resultado: emprego em tempo integral equivalente (FTE) do restaurante
# nj         = tratamento: 1 se o restaurante fica em New Jersey, 0 se na Pensilvânia
# postperiod = tempo: 0 antes do aumento (fev./mar. 1992), 1 depois (nov./dez. 1992)

# Médias por grupo e período
nj_antes       <- mean(d$emptot[d$nj == 1 & d$postperiod == 0], na.rm = TRUE)
nj_depois      <- mean(d$emptot[d$nj == 1 & d$postperiod == 1], na.rm = TRUE)
controle_antes <- mean(d$emptot[d$nj == 0 & d$postperiod == 0], na.rm = TRUE)
controle_depois <- mean(d$emptot[d$nj == 0 & d$postperiod == 1], na.rm = TRUE)

# Diferenças no tempo dentro de cada grupo
dif_nj       <- nj_depois - nj_antes
dif_controle <- controle_depois - controle_antes

# Estimador de Diferenças em Diferenças
did <- dif_nj - dif_controle

tabela_did <- data.frame(
  Grupo     = c("New Jersey (tratado)", "Pensilvânia (controle)", "Diferença em diferenças"),
  Antes     = c(nj_antes, controle_antes, NA),
  Depois    = c(nj_depois, controle_depois, NA),
  Diferenca = c(dif_nj, dif_controle, did)
)

print(tabela_did, digits = 3)

# O resultado (cerca de +2,75 empregados FTE por restaurante) é igual ao
# coeficiente da interação nj:postperiod na regressão
# lm(emptot ~ nj * postperiod, data = d)
