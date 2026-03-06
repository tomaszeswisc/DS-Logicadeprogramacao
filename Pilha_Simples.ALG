Algoritmo "Pilha_Simples"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2026
Var
// Seção de Declarações das variáveis 

pilha: vetor[1..3] de inteiro
topo, i: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

 topo <- 0

   escreval("Digite 3 numeros para empilhar:")

   // Empilhar números digitados
   para i de 1 ate 3 faca
      escreva("Numero ", i, ": ")
      leia(pilha[i])
      topo <- topo + 1
   fimpara

   escreval
   escreval("Pilha (Topo -> Base):")

   // Mostrar pilha
   para i de topo ate 1 passo -1 faca
      escreval(pilha[i])
   fimpara


Fimalgoritmo