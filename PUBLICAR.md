# Como publicar este repositório (passo a passo)

> Este arquivo é só para você. Depois de publicar, pode apagá-lo do repositório.

## 1. Ajustar os dados pessoais (2 minutos)

Procure por `JPDNascimento` nos arquivos `README.md`, `index.qmd` e `_quarto.yml` e substitua pelo seu usuário do GitHub. Revise também a seção **Créditos** do `README.md` e ajuste como preferir a descrição do seu papel na disciplina.

## 2. Renderizar o site no seu computador

Esta etapa roda todo o código e verifica se ele funciona.

1. Abra `avaliacao-impacto-politicas-publicas.Rproj` no RStudio.
2. No console, rode `source("instalar_pacotes.R")`.
3. Na aba **Terminal** do RStudio, rode:

   ```
   quarto render
   ```

4. Se alguma página der erro, o Quarto mostra o arquivo e a linha. Corrija e rode de novo.
5. Ao final, a pasta `docs/` terá o site, e a pasta `_freeze/` guardará os resultados. As duas devem ir para o GitHub.

Na primeira renderização, as aulas de RDD e a revisão final baixam três bases da internet e as salvam em `dados/`. Isso exige conexão.

## 3. Subir para o GitHub (com o GitHub Desktop)

1. Instale o [GitHub Desktop](https://desktop.github.com/) e entre com a sua conta.
2. **File → Add local repository…** e escolha esta pasta. Como ela ainda não é um repositório, o programa oferece **create a repository**: aceite e mantenha o nome `avaliacao-impacto-politicas-publicas`.
3. Confira na lista de alterações que **não** aparece nenhum arquivo de notas, `.rar` ou `.docx`.
4. Escreva uma mensagem (ex.: "Primeira versão do material da disciplina") e clique em **Commit to main**.
5. Clique em **Publish repository** e desmarque "Keep this code private", para que o repositório fique público.

## 4. Ativar o site (GitHub Pages)

1. No github.com, abra o repositório → **Settings → Pages**.
2. Em **Build and deployment**: Source = *Deploy from a branch*, Branch = `main`, pasta = `/docs`. Clique em **Save**.
3. Em 1 ou 2 minutos o site estará em `https://jpdnascimento.github.io/avaliacao-impacto-politicas-publicas`.

## 5. Para o currículo

- No perfil do GitHub, use **Customize your pins** para fixar o repositório.
- Na página do repositório, em **About** (engrenagem), coloque o link do site e tópicos como `r`, `quarto`, `causal-inference`, `impact-evaluation`, `public-policy`, `difference-in-differences`, `regression-discontinuity`, `propensity-score`.
- No Lattes ou no LinkedIn, cite o link do site como material didático produzido.
