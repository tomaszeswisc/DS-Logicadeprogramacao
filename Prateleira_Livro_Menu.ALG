Algoritmo "PrateleiraLivro"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2026
Var
// Seção de Declarações das variáveis 

livros: vetor[0..2,0..4] de caractere
i, j, prateleira, posicao, op: inteiro
ativo: logico

//Pocrdimento Mostar Estante

procedimento mostrar_estante()

inicio

   escreval
   escreval("============================ ESTANTE DE LIVROS =======================")
   escreval
   
   //Cabeçalho da Estante (COLUNAS)
   escreval
   escreval("                                  Posiçoes                             ")
   escreval
   escreva("                ") //16 espaços
     para j de 0 ate 4 faca
        escreva(" [" ,j, "]      ")
     fimpara
     
   escreval
   escreval
   
   //Linhas (PRATELEIRAS)
   para i de 0 ate 2 faca
     escreva("Prateleira ", i, ": ")
     
     para j de 0 ate 4 faca
       escreva(livros[i,j], " | ")
     fimpara
     
     escreval
   fimpara

   escreval("======================================================================")
   
fimprocedimento

//Procedimento Buscar Livro

procedimento buscar_livros()

inicio

   escreva("Digite a prateleira (0 a 2): ")
   leia(prateleira)
   
   escreva ("Digite a posição (0 a 4): ")
   leia(posicao)

   escreval
   escreval("----------------------------------")
   escreval("Livro encontrado: ", livros[prateleira,posicao])
   escreval("----------------------------------")
   
fimprocedimento


//Procedimento Menu

procedimento menu()

inicio

   escreval
   escreval("======= MENU ======")
   escreval("1 - Mostrar Estante")
   escreval("2 - Buscar Livro")
   escreval("0 - Sair")
   escreval("===================")

fimprocedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   livros[0,0] <- "Livro 01"
   livros[0,1] <- "Livro 02"
   livros[0,2] <- "Livro 03"
   livros[0,3] <- "Livro 04"
   livros[0,4] <- "Livro 05"

   livros[1,0] <- "Livro 06"
   livros[1,1] <- "Livro 07"
   livros[1,2] <- "Livro 08"
   livros[1,3] <- "Livro 09"
   livros[1,4] <- "Livro 10"

   livros[2,0] <- "Livro 11"
   livros[2,1] <- "Livro 12"
   livros[2,2] <- "Livro 13"
   livros[2,3] <- "Livro 14"
   livros[2,4] <- "Livro 15"

ativo <- verdadeiro

enquanto ativo faca

  menu()
  escreva("Escolha uma Opção: ")
  leia(op)
  
    escolha op
    
      caso 1
         mostrar_estante()
         
      caso 2
         buscar_livros()
         
      caso 0
         ativo <- falso
         escreval("Finalizando o Sistema...")
         
      outrocaso
         escreval
         escreval("Opção Invalida!")
         
    fimescolha

fimenquanto

   escreval("Sistema encerrado!")

Fimalgoritmo