Algoritmo "Fila_Simples"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2026
Var
// Seção de Declarações das variáveis 

fila: vetor[1..3] de inteiro
i: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


 escreval("Digite 3 numeros para a Fila:")

   para i de 1 ate 3 faca
      escreva("Numero ", i, ": ")
      leia(fila[i])
   fimpara

   escreval
   escreval("Elementos da Fila:")

   para i de 1 ate 3 faca
      escreva(fila[i]," ")
   fimpara


Fimalgoritmo