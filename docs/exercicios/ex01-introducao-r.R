# Exercício 1 — Introdução ao R (entrega original: 17/10/2024)

# Linha de código para instalar o pacote "rio" no computador
# (rode apenas uma vez; depois pode deixar comentada)
# install.packages("rio")

# Linha de código para ler o pacote "rio" que será usado hoje
library(rio)

# Linha de código para importar a base de dados "auto.dta"

d <- import(file = '../dados/auto.dta')

# Código para mostrar as primeiras linhas da base de dados "d"

head(d)

###### No espaço abaixo responda os itens do exercício ####


# 1) Análise da eficiência de combustível automotivo.
# Responda às seguintes perguntas usando o conjunto de dados auto.dta no R.

# a) Resuma as variáveis de preço, rendimento (mpg, milhas por galão) e peso.

# b) Liste as cinco primeiras observações para as variáveis: marca, preço, rendimento (mpg), peso e origem (estrangeiro/doméstico).

# c) Quantas observações existem no total? Quantas são de carros domésticos e quantas de carros estrangeiros?

# d) Produza um gráfico de dispersão com rendimento (mpg) no eixo Y e peso no eixo X. Descreva a relação apresentada.

# e) Repita o gráfico de dispersão, mas desta vez apenas para carros estrangeiros.
