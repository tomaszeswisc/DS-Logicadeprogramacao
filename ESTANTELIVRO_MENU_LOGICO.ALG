Algoritmo "EstanteLivro_Menu"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/03/2026


Var
// Seção de Declarações das variáveis 
   livros: vetor[0..4] de caractere
   status: vetor[0..4] de logico
   i: inteiro
   ativo: logico
   op: inteiro
   
   
// Procedimento Mostrar Menu

procedimento menu()

inicio

   escreval
   escreval("========= MENU =========")
   escreval("1 - Mostrar livros")
   escreval("2 - Emprestar livro")
   escreval("3 - Devolver livro")
   escreval("0 - Sair")
   escreval("========================")

fimprocedimento

//Procedimento Mostrar Livros

procedimento listar_livros

inicio

   escreval
   escreval("------ESTANTE------")

      para i de 0 ate 4 faca
        escreva(i, " - ", livros[i], " -> ")
        
          se status[i] entao
            escreval ("Disponivel")
            
          senao
            escreval ("Emprestado")
          fimse
      fimpara

fimprocedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   //Inicializando os Livros
   livros[0] <- "Senhor dos Aneis"
   livros[1] <- "Guerras Secretas"
   livros[2] <- "O Principe"
   livros[3] <- "Programação em Java"
   livros[4] <- "Sherlock Holmes"

// Para todos iniciar disponiveis

   para i de 0 ate 4 faca
     status[i] <- verdadeiro
   fimpara
   
   ativo <- verdadeiro
   
enquanto ativo faca

    menu()
    
    escreva("Escolha uma opção: ")
      leia(op)

   escolha op
   
         caso 1

            listar_livros
            
         caso 2
            escreva("Digite o numero do Livro para Emprestar: ")
              leia(i)
              
                se (i < 0) ou (i > 4) entao
                   escreval("Opção Invalida")
                senao
                   se status[i] entao
                     status[i] <- falso
                     escreval("Livro emprestado com sucesso!")
                   senao
                     escreval("Livro ja esta emprestado!")
                   fimse
                 fimse

         caso 3

            escreva("Digite o Numero do Livro para Devolver: ")
            leia(i)
            
               se (i < 0) ou (i > 4) entao
                   escreval("Opção Invalida")
               senao
                 se nao status[i] entao
                   status[i] <- verdadeiro
                   escreval("Livro devolvido com sucesso!")
                 senao
                   escreval("Esse livro ja esta Disponivel")
                 fimse
               fimse
               
         caso 0
            ativo <-falso

              escreval("Encerrando o Sistema...")

         outrocaso

            escreval("Opção Invalida!")
         
   fimescolha
         
fimenquanto
   
escreval("Sistema Encerrado!")

Fimalgoritmo