# Avaliação de Impacto de Políticas Públicas — material didático em R

Aulas práticas, exercícios e soluções que preparei e conduzi como monitor da disciplina **Avaliação de Políticas Públicas (AVPP)**, do curso de Gestão Pública da **Universidade Federal de Minas Gerais (UFMG)**, no 2º semestre de 2024.

O material cobre, com dados reais e simulados, os principais desenhos de **inferência causal** usados para avaliar políticas públicas, todos implementados em **R** e documentados em **Quarto**.

**Site com todas as aulas renderizadas:** https://jpdnascimento.github.io/avaliacao-impacto-politicas-publicas

## Conteúdo

| # | Aula | Métodos e conceitos | Aplicação |
|---|------|---------------------|-----------|
| 1 | Introdução ao R | objetos, vetores, operadores, pacotes | — |
| 2 | Regressão linear simples | endogeneidade, variáveis aleatórias | Quarteto de Anscombe |
| 3 | Regressão por MQO | pressupostos, diagnóstico de resíduos | Escolaridade e renda (simulação) |
| 4 | Experimentos | randomização, diferença de proporções | Discriminação no mercado de trabalho (Bertrand & Mullainathan, 2004) |
| 5 | Propensity score | escore como controle, IPW, pareamento (MatchIt) | Mosquiteiros e malária (dados simulados) |
| 6 | Diferenças em Diferenças | tendências paralelas, confundidores que variam no tempo | Programa de segurança (simulação); salário mínimo (Card & Krueger, 1994) |
| 7 | Regressão com Descontinuidade | RDD *sharp* e *fuzzy*, polinômios, `rdrobust` | Idade mínima para beber e mortes no trânsito (Carpenter & Dobkin, 2011) |
| 8 | Dados em painel | Pooled OLS, primeiras diferenças, efeitos fixos e aleatórios, Hausman, erros-padrão clusterizados | Pena de morte e homicídios nos EUA |
| 9 | Custo-efetividade | custo por beneficiário, custo-efetividade | Comparação de políticas |
| 10 | Qual método usar? | escolha do desenho de avaliação | Estudos de caso em gestão pública |

**Exercícios** (com enunciado e, na maioria, solução comentada): introdução ao R, revisão de regressão, testes de hipótese, experimento de campo (contato e opinião), propensity score e Regressão com Descontinuidade aplicados ao programa de seguro saúde HISP (Banco Mundial), DiD com Card & Krueger e uma revisão final integrando DiD, RDD e propensity score.

## Estrutura do repositório

```
├── aulas/          # uma pasta por aula: .qmd, scripts .R e slides em PDF
├── exercicios/     # enunciados (versão para os alunos)
├── solucoes/       # soluções comentadas
├── dados/          # bases usadas (ver dados/README.md para as fontes)
├── docs/           # site renderizado (publicado no GitHub Pages)
├── _quarto.yml     # configuração do site
├── instalar_pacotes.R
└── CORRECOES.md    # registro das correções feitas antes da publicação
```

## Como reproduzir

1. Instale o [R](https://cran.r-project.org/), o [RStudio](https://posit.co/download/rstudio-desktop/) e o [Quarto](https://quarto.org/docs/get-started/).
2. Clone o repositório e abra o arquivo `avaliacao-impacto-politicas-publicas.Rproj`.
3. Instale os pacotes: `source("instalar_pacotes.R")`.
4. Renderize uma aula específica (botão *Render* no RStudio) ou o site inteiro, com `quarto render` no terminal.

Algumas aulas baixam dados da internet na primeira execução e salvam uma cópia em `dados/`.

## Créditos

- Material preparado por **João Paulo Dellasta** (doutor em Ciência Política pela UFMG), que atuou como monitor da disciplina durante o doutorado.
- Colaboração de **João Cardoso L. Camargos** nas aulas de Diferenças em Diferenças, RDD, propensity score e na revisão final.
- A Aula 1 adapta material do Prof. **Felipe Nunes** (UFMG).
- Exemplos e dados adaptados de: Gertler et al., *Avaliação de Impacto na Prática* (Banco Mundial); Bailey, *Real Stats*; Imai, *Quantitative Social Science*; Wooldridge, *Introdução à Econometria*; Angrist e Pischke, *Mastering 'Metrics*; Andrew Heiss, *Program Evaluation for Public Service*; Simon Munzert, tutorial de RDD.

## Licença

Textos e materiais didáticos: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.pt-br). Código: licença MIT (ver `LICENSE`). As bases de dados pertencem aos respectivos autores (ver `dados/README.md`).
