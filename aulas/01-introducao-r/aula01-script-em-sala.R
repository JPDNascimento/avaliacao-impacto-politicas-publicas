
# Aula 1 — Introdução ao R (script usado em sala)
# Rode linha a linha (Ctrl/Cmd + Enter). Algumas linhas geram erro de propósito,
# para mostrar como o R reage; elas estão marcadas com 'ERRO PROPOSITAL'.
# 
################### soma com R ####

# Faz conta

5 + 3
5 + 3
5/3

5*(1 - 12)

sqrt(4)

###################

# Funciona como uma linguagem de objetos

resultado <- 5 + 3 
resultado <- 5 +3
print(resultado)


# Se mudarmos o conteúdo do objeto mudamos o que fica salvo (cuidado para não reescrever)

resultado <- 5 - 3

# O R é "case sensitive": maiúsculas e minúsculas são diferentes.
# ERRO PROPOSITAL: o objeto se chama 'resultado' (minúsculo), então a linha abaixo gera erro.

Resultado 



############# 

# Funciona como uma linguagem de objetos 2

#Criando uma palavra ou string

a <- 'felipe'
a

a <- 'felipe e R'
a

# Salvando um número como classe string

b <- '5'
b
B   # ERRO PROPOSITAL: 'B' (maiúsculo) não existe
b/3 # ERRO PROPOSITAL: não é possível dividir um texto ("5") por um número

# Salvando um número como classe numeric

b <- 5

b/3

############## 

# Cada objeto é de uma classe específica

# Classe numérica, que são números, podem sofrer alterações aritméticas 

resultado

class(resultado)

# Classe character ou string, usada para descrever objetos

b

class(b)

# Padrão "função", 

class(sqrt)

##############

# R aceita informação como um vetor

# Um vetor no R é uma estrutura de dados que armazena um conjunto de valores de um mesmo tipo. 

# Concatenar é "unir". 

pop <- c(2525779,3026003,3691173,4449049,
         5320817,6127700,6916183) #Concatenar numeros

pop

pop1 <- c(2525779,3026003,3691173)
pop2 <- c(4449049,5320817)
pop3 <- c(6127700,6916183)
popT <- c(pop1, pop2, pop3) #Concatenar objetos

#############

# É possível acessar dados dentro dos Vetores

pop[2] # Segundo elemento salvo dentro do objeto 'pop'

pop[c(2, 4)]

pop[c(4, 2)]

pop[-3]

#############

# É possível realizar operações em objetos

pop.mil <- pop / 1000 # População em milhares
pop.mil

pop.tx <- pop / pop[1] # População em relação ao primeiro ano da série (1950)

pop.tx

################

# É possível realizar operações em objetos 2

pop[-1]

pop[-7]

pop.cresc <- pop[-1] - pop[-7]

pop.cresc

perc.cresc <- (pop.cresc / pop[-7]) * 100

perc.cresc

######################

# Também é possível mudar observações dentro de vetores

perc.cresc[c(1,2)] <- c(20, 22)
perc.cresc


# O R traz varias funções prontas para serem usadas

min(pop)

max(pop)

range(pop)

mean(pop)

sum(pop) / length(pop)

######################

# O R traz varias funções prontas para serem usadas 2

ano <- seq(from = 1950, to = 2010, by = 10)

ano

ano <- seq(by = 10, to = 2010, from = 1950)

ano
