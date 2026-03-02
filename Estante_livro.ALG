Algoritmo "EstanteLivro"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/03/2026
Var
// Seção de Declarações das variáveis 
   livros: vetor[0..4] de caractere
   indice: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   livros[0] <- "Senhor dos Aneis"
   livros[1] <- "Guerras Secretas"
   livros[2] <- "O Principe"
   livros[3] <- "Programação em Java"
   livros[4] <- "Sherlock Holmes"

   escreval("Qual livro você quer pegar da Estante?")
   leia(indice)

   escreval(livros[indice])

Fimalgoritmo