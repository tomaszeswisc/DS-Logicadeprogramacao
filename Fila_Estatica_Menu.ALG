Algoritmo "FilaEstatica"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/03/2026

Const
//1° Seção de Declarações das Constantes
   tam_vet = 5

Var
// Seção de Declarações das variáveis
   comeco, fim, qtde, i: inteiro
   vet: vetor[1..tam_vet] de inteiro
   opcao: inteiro
   num: inteiro
   ativo: logico



//2° Criar funções da Fila

//Fila cheia

funcao esta_cheia(): logico

inicio

   se qtde = tam_vet entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
   
fimfuncao


//Fila vazia

funcao esta_vazia(): logico

inicio

   se qtde = 0 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
   
fimfuncao


//Função Acessar Próximo da Fila

funcao mostrar_proximo(): inteiro

inicio

   se esta_vazia() entao
      escreval("A Fila está Vazia")
      retorne -1
   senao
      retorne vet[comeco]
   fimse
   
fimfuncao


//3° Procedimento de Cadastro na Fila
//ENFILEIRAR

procedimento cadastro(num: inteiro)

inicio

   se esta_cheia() entao
      escreval("A Fila está Cheia")
   senao
      fim <- fim + 1
      se fim > tam_vet entao
         fim <- 1
      fimse

      vet[fim] <- num
      qtde <- qtde + 1
   fimse
   
fimprocedimento


// Procedimento Retirar da Fila
//DESENFILEIRAR

procedimento retirar()

inicio

   se esta_vazia() entao
      escreval("A Fila está Vazia")
   senao
      // (opcional/didático) limpa a posição que está saindo
      vet[comeco] <- 0

      comeco <- comeco + 1
      se comeco > tam_vet entao
         comeco <- 1
      fimse

      qtde <- qtde - 1
   fimse
   
fimprocedimento


// Procedimento Mostrar a Fila

procedimento mostrar_fila()

inicio

   escreval
   escreval("-------Posições da Fila-------")

   se qtde > 0 entao
      se comeco <= fim entao
      
         // Começo ao fim (sem dar a volta)
         
         para i de comeco ate fim faca
            escreva(vet[i], " ")
         fimpara
         
      senao
      
         // Começo ao final e do 1 até fim (deu a volta)

         para i de comeco ate tam_vet faca
            escreva(vet[i], " ")
         fimpara

         para i de 1 ate fim faca
            escreva(vet[i], " ")
         fimpara
         
      fimse
      
   senao
      escreval("Fila vazia.")
   fimse

   escreval
   escreval("------------------------------")
   escreval
fimprocedimento


// Procedimento Mostrar Menu

procedimento menu()

inicio

   escreval
   escreval("=========== MENU FILA ===========")
   escreval("1 - Adicionar numero na fila (Enfileirar)")
   escreval("2 - Mostrar fila")
   escreval("3 - Remover numero da fila (Desenfileirar)")
   escreval("4 - Mostrar proximo da fila")
   escreval("0 - Sair")
   escreval("=================================")

fimprocedimento


Inicio

// Seção de Comandos, procedimento, funções, operadores, etc...

   comeco <- 1  // primeiro índice possível
   fim <- 0     // antes do primeiro elemento
   qtde <- 0   // IMPORTANTE: inicializa a fila vazia
   ativo <- verdadeiro
   
   // (Importante) zerar o vetor
   
   para i de 1 ate tam_vet faca
      vet[i] <- 0
   fimpara
   
   enquanto ativo faca

      menu()
      escreva("Escolha uma opcao: ")
      leia(opcao)

      escolha opcao

         caso 1
            escreva("Digite um numero inteiro para inserir: ")
            leia(num)
            cadastro(num)

         caso 2
            mostrar_fila()

         caso 3
            retirar()

         caso 4
            escreval("Proximo da fila: ", mostrar_proximo())

         caso 0
            escreval("Encerrando o sistema...")
            ativo <- falso

         outrocaso
            escreval("Opcao invalida!")

      fimescolha

   fimenquanto


Fimalgoritmo