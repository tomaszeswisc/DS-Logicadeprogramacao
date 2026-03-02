Algoritmo "Vetor Presentes"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Antonio Carlos Niroldi
// Descrição    : Aqui você descreve o que o programa faz! (função)
// Autor(a)     : Nome do(a) aluno(a)
// Data atual   : 27/11/2023

Var
// Seção de Declarações das variáveis
   presentes: vetor[0..5] de caractere
   sorteio, restante, opcao, i:inteiro

//Procedimento Mostrar Menu

procedimento mostrar_menu()

inicio

   escreval
   escreval("=============== MENU ================")
   escreval("                                     ")
   escreval("  1 - Mostrar presentes disponíveis  ")
   escreval("  2 - Sortear presente               ")
   escreval("  0 - Sair                           ")
   escreval("                                     ")
   escreval("=====================================")
   escreval("")

fimprocedimento


//Procedimento Presentes Disponiveis

procedimento listar_presentes()

inicio

   escreval("")
   escreval("------- PRESENTES DISPONÍVEIS -------")

   para i de 0 ate 5 faca

      se presentes[i] <> "" entao
         escreval(i+1, " - ", presentes[i])
      fimse

   fimpara
   escreval("-------------------------------------")
fimprocedimento


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

// Inicializando o Vetor

   presentes[0] <- "Caneca"
   presentes[1] <- "Cachecol"
   presentes[2] <- "Porta Retrato"
   presentes[3] <- "Pantufa"
   presentes[4] <- "Boné"
   presentes[5] <- "Mouse"
   
   restante <- 6
   
// Repete enquanto ainda existirem presentes

  enquanto restante > 0 faca
   
      mostrar_menu()

      escreva("Escolha uma opção: ")
      leia(opcao)
      escreva("-------------------------------------")
      
      escolha opcao

         caso 1
            limpatela
            
            listar_presentes()

         caso 2

            escreval
            escreval("Presentes restantes: ", restante)
            escreva("-------------------------------------")
            escreval("")
            escreva("Digite um numero de 1 a 6: ")
            leia(sorteio)

            // Validação da faixa

            se (sorteio < 1) ou (sorteio > 6) entao
               limpatela
               escreval("Numero invalido!")
            senao

               sorteio <- sorteio - 1

               // Verifica se o presente ainda existe

               se presentes[sorteio] <> "" entao
                  limpatela
                  escreval("Presente sorteado: ", presentes[sorteio])

                  // Remove o presente

                  presentes[sorteio] <- ""

                  restante <- restante - 1

               senao
                  limpatela
                  escreval("Esse presente ja foi retirado!")
               fimse
            fimse

         caso 0
            limpatela
            escreval("Encerrando o sistema...")
            
            // aqui encerramos o laço naturalmente

            restante <- 0

         outrocaso
            limpatela
            escreval("Opção invalida!")

      fimescolha

   fimenquanto

   escreval
   escreval("Sistema Finalizado!")

Fimalgoritmo