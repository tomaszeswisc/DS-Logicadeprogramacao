Algoritmo "CadastroAlunos"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/03/2026

Tipo

aluno = registro
   n: caractere // n: nome
   n1: real // n1: nota 1
   n2: real // n2: nota 2
   md: real // md: media
   
fimregistro


Var
// Seção de Declarações das variáveis 

a: vetor[1..4] de aluno // a: vetor alunos
i: inteiro // indice


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


escreval("=== Cadastro de Alunos ===")

//Laço de Inserção dos dados

para i de 1 ate 2 faca

   escreval("Digite os Dados do Aluno: ", i)

   escreva("Nome do Aluno:")
   leia(a[i].n)
   
   escreva("Digite a Nota 1: ")
   leia(a[i].n1)
   
   escreva("Digite a Nota 2: ")
   leia(a[i].n2)
   
   //Calculo da media
   
   a[i].md <- (a[i].n1 + a[i].n2) / 2
   
fimpara

//Laço de Exibição dos Dados


escreval
escreval("Resultado do Bimestre")

//Exibir Nome e Media


   para i de 1 ate 2 faca
   
      escreval("Aluno: ", a[i].n)  // Escreve o Nome
      escreval("Média: ", a[i].md) // Escreve o Calculo da Média
      escreval("-----------------")
      
   fimpara

Fimalgoritmo