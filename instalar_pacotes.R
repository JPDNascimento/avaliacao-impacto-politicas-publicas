# Instala todos os pacotes usados nas aulas e exercícios.
# Rode uma vez antes de renderizar o site (quarto render).

pacotes <- c(
  "tidyverse", "rio", "haven", "foreign", "broom",
  "stargazer", "sjPlot", "gridExtra",
  "MatchIt",                  # pareamento
  "plm", "lmtest", "sandwich", # painel e erros-padrão robustos/clusterizados
  "rdrobust",                 # regressão com descontinuidade
  "fixest",                   # efeitos fixos (revisão final)
  "dataverse",                # download de dados do Harvard Dataverse
  "rmarkdown", "knitr"
)

faltando <- setdiff(pacotes, rownames(installed.packages()))
if (length(faltando) > 0) install.packages(faltando)
