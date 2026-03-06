Algoritmo "Pilha"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/03/2026

Const
//Seção de Declarações das Constantes

tam_vet = 5
   
Var
// Seção de Declarações das variáveis 
vet: vetor [1..tam_vet] de inteiro    //vetor
i, topo, op, num: inteiro             //incrementador e topo da pilha
ativo: logico


//Criar funções da pilha

//Função Pilha Cheia

funcao esta_cheia(): logico

inicio

   se topo = tam_vet entao
      retorne verdadeiro
   senao
      retorne falso
   fimse

fimfuncao


//Função Pilha Vazia

funcao esta_vazia(): logico

inicio

   se topo = 0 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse

fimfuncao


//Empilhar - primeiro saber se a pilha esta cheia

procedimento empilhar(num: inteiro)

inicio

   se esta_cheia() entao
      escreval("A Pilha está cheia")
      escreval
   senao
      topo <- topo + 1
      vet[topo] <- num   //vetor recebe numero que passaremos
   fimse

fimprocedimento


//Desempilhar - primeiro saber se nao esta vazia

procedimento desempilhar()

inicio

   se esta_vazia() entao
      escreval("A Pilha está vazia")
   senao
      vet[topo] <- 0 // apagar o valor que saiu
      topo <- topo - 1
      escreval("Desempilhado com Sucesso!")
   fimse

fimprocedimento


//Mostrar topo

procedimento mostrar_topo()

inicio

   escreval
   escreval("----Topo da Pilha----")
   se esta_vazia() entao
      escreval("Pilha vazia")
   senao
      escreval("Topo: ", vet[topo])
   fimse
   escreval("-----------------------")

fimprocedimento


// Mostrar Pilha
// no formato "caixa", de cima para baixo

procedimento mostrar_pilha()

inicio

   escreval
   escreval("========== PILHA ==========")
   
   se topo = 0 entao
      escreval("Pilha vazia!")
   senao

      escreval("    -TOPO-")
   para i de topo ate 1 passo -1 faca
     escreval("   -------")
         escreval("   | ", vet[i], " |")
      fimpara
      escreval("   -------")
      escreval("    -BASE-")
   fimse
   
   escreval("===========================")
   escreval

fimprocedimento


//Mostrar Menu

procedimento menu()

inicio

   escreval
   escreval("=========== MENU PILHA ===========")
   escreval("1 - Empilhar")
   escreval("2 - Desempilhar")
   escreval("3 - Mostrar pilha")
   escreval("4 - Mostrar topo")
   escreval("0 - Sair")
   escreval("==================================")

fimprocedimento

//Pausa para limpar a tela

procedimento refresh()

var tecla: caractere

inicio

   escreval
   escreval("Pressione ENTER para continuar...")
   leia(tecla)
   
fimprocedimento

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Inicialização

   topo <- 0
   ativo <- verdadeiro

// Zerar o vetor

   para i de 1 ate tam_vet faca
      vet[i] <- 0
   fimpara
   
enquanto ativo faca

      menu()
      escreva("Escolha uma opcao: ")
      leia(op)

      escolha op

         caso 1
            escreva("Digite um numero inteiro para empilhar: ")
            leia(num)
            empilhar(num)
            refresh()
            limpatela

         caso 2
            desempilhar()
            refresh()
            limpatela

         caso 3
            mostrar_pilha()
            refresh()
            limpatela

         caso 4
            mostrar_topo()
            refresh()
            limpatela

         caso 0
            escreval("Encerrando o sistema...")
            ativo <- falso

         outrocaso
            escreval("Opcao invalida!")

      fimescolha

   fimenquanto


Fimalgoritmo