#_______________________#  INTRODUÇÃO AO R  #______________________#


#---#   PRIMEIRO PASSO EM QUALQUER LINGUAGEM DE PROGRAMAÇÃO   #---#
print("Hello World")


#-----------------#   TIPOS DE VARIÁVEIS EM R   #-----------------#
valor1 <- 15
print(valor1)
class(valor1)

valor2 <- 14.9
class(valor2)

valor3 <-  "Bem-vindo ao Ocean"
print(valor3)
class(valor3)

valor4 <- TRUE
print(valor4)
class(valor4)


#------------#   OPERADORES MATEMÁTICOS E LÓGICOS   #-------------#
#OPERADORES MATEMÁTICOS:
8 + 7
20 - 5
5 * 3
45 / 3
151 %% 10

#OPERADORES LÓGICOS:
15 == 15
15 != 14
15 > 15
15 < 16
15 >= 15
15 <= 16

15 == 15 & 16==16
15 == 15 & 15==16

15 == 15 | 15==16
15 == 16 | 16==17 


#-----------------#   OPERADORES CONDICIONAIS   #-----------------#
valor5 <- 15

#SIMPLES:
if (valor5 == 15){
  print("A variável tem valor igual a 15")
}

#COMPLETA:
if (valor5 != 15){
  print("A variável tem valor diferente de 15")
} else{
  print("A variável tem valor igual a 15")
}


#-------------------#   LAÇOS DE REPETIÇÃO   #--------------------#
#COMANDO WHILE:
i <- 1
while (i < 10){
  print(i)
  i <- i +  1
}

#COMANDO WHILE COM BREAK:
i <- 1
while (i < 10){
  print(i)
  if (i == 7){
    break
  }
  i <- i +  1
}

#COMANDO WHILE COM NEXT:
i <- 1
while (i < 10){
  i <- i +  1
  if (i == 7){
    next
  }
  print(i)
}

#COMANDO FOR:
flores <- list("setosa","virginica", "versicolor")

for (flor in flores) {
  print(flor)
}

#COMANDO FOR COM BREAK:
for (flor in flores) {
  if (flor == "virginica"){
    break
  }
  print(flor)
}


#------------------#   DEFINIÇÃO DE FUNÇÕES   #-------------------#
roll2 <- function(bones = 1:6) {
  dice <- sample(bones, size = 2, replace=TRUE)
  sum(dice)
}

roll2()


#------------------#   ESTRUTURAS DE DADOS   #--------------------#

#VETOR
vetor1 <- c("Airbus", "Boeing", "Embraer")
vetor2 <- 1:10

#LISTA
lista1 <- list("Airbus","A", 320, TRUE)


#MATRIZ
matriz1 <- matrix(
  c(1,0,0,
    0,1,0,
    0,0,1),
  nrow = 3,
  ncol = 3
)

#DATA FRAME
data_frame1 <- data.frame (
  Frota_Aeronaves = c("Airbus", "Boeing", "Embraer"),
  Azul = c(64, 2, 62),
  GOL = c(0, 139, 0),
  LATAM = c(134, 22, 0)
)
data_frame1



#---------------------#   OPERADOR PIPE   #-----------------------#

#Incorporado de forma nativa ao R através do comando "|>".

#A ideia do operador pipe é bem simples, utilizar o valor resultante 
#da expressão do lado esquerdo como primeiro argumento da função do
#lado direito. Vamos para um exemplo:

3.14159 |> cos()

x <- c(1, 2, 3, 4)
x |> sum() |> sqrt()
