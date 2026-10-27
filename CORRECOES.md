# Registro de correções (revisão de outubro de 2026)

Antes de publicar, todo o material da edição 2024/2 foi revisado. Este arquivo registra o que mudou em relação aos arquivos originais usados em sala, para que quem já tinha a versão antiga saiba o que foi corrigido.

## Correções de conteúdo (mudam resultados ou interpretações)

**Exercício 7 (RDD, HISP).** O texto dizia usar os dados pós-tratamento, mas o código usava a linha de base (`round == 0`), o que dava um efeito de cerca de −1,4. Agora o efeito é estimado na rodada de acompanhamento (`round == 1`), cerca de −9,3, e a linha de base virou um teste de placebo. Também foi corrigida a interpretação do gráfico: escore maior significa família **menos** pobre, e são as famílias em melhor situação que gastam mais com saúde.

**Exercício 6 (DiD, Card & Krueger).**
- `emptot` é o emprego em tempo integral equivalente (FTE) do restaurante, e não o "valor médio pago por dia". O efeito de 2,75 significa +2,75 empregados por restaurante, e não US$ 2,75.
- A amostra é de 410 restaurantes, e não de funcionários.
- As descrições dos controles foram corrigidas.
- Foram retirados os controles afetados pelo tratamento (`wage_st`, `hrsopen`, `pmeal`, `closed`) e a dummy colinear `wendys`.
- Foram incluídos erros-padrão clusterizados por restaurante.

**Aula 6 (DiD, simulação).**
- A "variável de confusão" era aleatória e independente do tratamento e do tempo: só acrescentava ruído, sem quebrar a tendência paralela. Agora ela cresce mais rápido nas cidades tratadas, o que viola de fato o pressuposto, e o texto explica por quê.
- Corrigido `year_effect[1]` no período 4 (deveria ser `year_effect[4]`).
- A equação foi reescrita com β₀ a β₃.

**Aula 8 (painel).**
- O modelo de efeitos aleatórios usava a matriz de variância do modelo de efeitos fixos (`vcovHC(lmout_fe)`), o que produzia erros-padrão errados.
- `vcovHC(lm, cluster = "group")` ignorava o cluster em objetos `lm`. Foi substituído por `sandwich::vcovCL(..., cluster = ~ id)`.
- Corrigida a interpretação de `fixef()`, que dá os interceptos dos estados, e não desvios da média.
- Corrigidas a descrição das variáveis e a equação do Pooled OLS.
- O texto não diz mais que efeitos aleatórios permitem coeficientes diferentes por unidade.

**Exercício 5 (propensity score, HISP).**
- As duas rodadas eram analisadas juntas (efeito de cerca de −5,4). Agora só a rodada de acompanhamento é usada (cerca de −10).
- Corrigida a subtração de vetores de tamanhos diferentes no cálculo da diferença de médias.
- Os pesos IPW agora são usados para estimar o efeito.
- O pareamento usa `weights` (necessário com reposição e `ratio = 2`).
- Corrigida a indexação do banco pareado e as variáveis citadas no texto, que tinham sido copiadas do exemplo dos mosquiteiros.

**Aula 5 (propensity score, mosquiteiros).**
- O texto anunciava ponderação (IPW), mas o código usava o escore como controle. Foram incluídos IPW (cerca de −10,1) e pareamento.
- Adicionado o crédito a Andrew Heiss, autor do exemplo e dos dados.

**Exercício 3 (regressão e testes de hipótese).**
- `white + black + hispanic = 1` para todos (armadilha da dummy). `hispanic` agora é explicitamente a categoria de referência, e a interpretação de `black` foi corrigida.
- Retirado o "mantendo tudo constante" de uma regressão simples.
- Retirada a linguagem causal.
- Corrigido "aceitar H₀".
- `ChangeGDPpc` está em dólares, e não em %.
- Incluída a interpretação dos coeficientes no item 2b.
- Incluído o alerta sobre o PIB como mediador no modelo final.
- A tabela de variáveis da questão 1 era a da questão 2.

**Revisão final.**
- O tratamento era construído com `fill(.direction = "up")`, que faz o contrário do comentário (marca como tratados os anos anteriores). Foi reescrito com `cummax()`.
- O modelo `treat * counter` agora é descrito como tendência diferencial, e foi incluído um DiD com efeitos fixos de duas vias.
- Aviso de que `fin_str_index` mede força financeira.
- O PS é estimado para o tratamento, e não para a variável dependente.
- `stargazer` agora tem `type = "text"`.
- Removidos artefatos de copiar e colar.

**Aula 7 (RDD).**
- Corrigidas a equação ($\tau D$) e a explicação do efeito.
- Corrigida a fórmula do valor previsto no modelo quadrático.
- Corrigida a interpretação do `rdrobust`: o efeito convencional é significativo a 5%, e o robusto tem p ≈ 0,06.
- Corrigida a descrição das limitações (continuidade e teste de McCrary).
- Corrigidos problemas de codificação de caracteres e a referência ("Princeton University Press").

**Aula 10 (qual método?).**
- No caso 1, a hipótese estava invertida: os elegíveis estão **abaixo** do limiar de renda.
- No caso 3, o texto dizia que equilibrar observáveis equilibra não observáveis. Isso vale para randomização, não para pareamento.
- Acrescentados os alertas sobre adoção escalonada no caso 4.

**Aula 9 (custo-efetividade).**
- A fórmula escrita multiplicava pelo tempo, mas o código divide.
- O ω da tela mosquiteira é 0,82 (e não 0,81).
- Os valores agora são calculados no código, e não digitados.
- Aviso de que só faz sentido comparar ω com efeitos na mesma escala.

**Aula 4 (experimento de raça).**
- "Nomes que soam americanos" foi corrigido para "afro-americanos".
- A diferença é de 3,2 p.p.: o valor 3,3 vinha de arredondar antes de subtrair.
- Incluído um teste de proporções.

**Aula 2 (regressão simples).**
- Corrigido o comentário `y = beta1 + beta0 * x` e retirados os números digitados à mão.
- A resposta sobre variáveis aleatórias foi reescrita.
- A resposta sobre as variâncias de Y no quarteto de Anscombe foi corrigida: elas são praticamente iguais, e esse é o ponto do exemplo.
- Corrigido o nome do arquivo de dados.

**Aula 1 e script de sala.**
- Corrigida a explicação da reciclagem de vetores.
- `resultado3` agora é impresso no lugar de `resultado2`.
- Corrigida a afirmação de que não é possível fazer contas com valores lógicos.
- `pop / 1000` está em milhares, e não em milhões.
- Os erros propositais estão sinalizados.

**Exercício 1.** `mpg` é rendimento (milhas por galão), e não "consumo". Incluídas as respostas descritivas dos itens d) e e). No enunciado original, a data de entrega estava como "17 de dezembro" em vez de 17 de outubro.

**Exercício 2.** A questão 3 tinha duas alternativas corretas; a alternativa (c) foi reescrita. O título do PDF original dizia "Exercício 3". Incluído o gabarito.

**Aula 3 (MQO).**
- O modelo era estimado duas vezes.
- O título "conferindo normalidade" estava sobre um `head()`.
- Esclarecido que a normalidade dos resíduos não é necessária para a ausência de viés.
- O resumo em PDF foi convertido em página própria, com correções:
  - erro ≠ resíduo;
  - o sinal do resíduo é $Y - \hat{Y}$;
  - Gauss-Markov não exige normalidade.

## Correções técnicas

- Todos os caminhos de dados agora são relativos à pasta `dados/`. Foram retirados `setwd()` e `getwd()`.
- `install.packages()` saiu de dentro dos documentos; a lista de pacotes está em `instalar_pacotes.R`.
- Os dados baixados da internet ficam salvos em `dados/` após a primeira execução.
- Funções obsoletas foram substituídas: `data_frame()` por `tibble()` e `size =` por `linewidth =` no ggplot2.
- O cabeçalho YAML foi padronizado. As opções do R Markdown (`output:`, `toc_float`) eram ignoradas pelo Quarto.
- Quebras de linha foram convertidas para o padrão Unix (LF), e erros de digitação foram corrigidos.

## Não incluído no repositório

- Planilha de notas dos alunos (dados pessoais).
- PDFs de livros e artigos com direitos autorais: eles aparecem como referência.
- Slides de outros professores.
- Material da edição anterior da disciplina.
- Arquivos `.rar`, `.zip`, `.pptx`, `.docx`, HTML renderizados e arquivos de sessão do R.
- Os PDFs "Aula 8 RDD" e "Aula 9 Painel": eram impressões das páginas HTML ainda com os erros listados acima. O site traz as versões corrigidas.
