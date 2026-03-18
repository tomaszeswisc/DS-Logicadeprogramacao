Algoritmo "AvFinal"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/03/2026

Const
   // Quantidade fixa de tipos de componentes usados na fábrica
   TAM_COMPONENTES = 5

   // Capacidade máxima da pilha de kits produzidos
   TAM_PILHA = 20

   // Capacidade máxima da fila de pedidos
   TAM_FILA = 20
   
Var
// Seção de Declarações das variáveis 

   // Vetor que guarda a quantidade disponível de cada componente no estoque
   estoque: vetor[1..TAM_COMPONENTES] de inteiro

   // Vetor que guarda o nome de cada componente
   componentes: vetor[1..TAM_COMPONENTES] de caractere

   // Vetor que representa a pilha de kits produzidos
   pilha_kits: vetor[1..TAM_PILHA] de caractere

   // Variável que controla o topo da pilha
   topo: inteiro

   // Vetor que representa a fila de pedidos
   fila_pedidos: vetor[1..TAM_FILA] de caractere

      // Variáveis que controlam o início, fim e quantidade de elementos na fila
   inicio_fila, fim_fila, qtde_fila: inteiro

   // Controle geral
   op: inteiro  // Variável de opção do menu
   ativo: logico  // Variável lógica que controla se o sistema continua rodando
   i: inteiro  // Variável auxiliar usada em vários laços


   // Variáveis auxiliares para entrada de dados e contadores
   codigo, quantidade: inteiro
   pedido_numero: inteiro
   total_produzidos: inteiro
   total_entregues: inteiro
   total_pedidos: inteiro
   kit_numero: inteiro

   // Variável usada apenas para pausar a tela
   tecla: caractere
   
// PROCEDIMENTO DE ATUALIZAR
// Esse procedimento serve para "segurar" a tela.
// O sistema mostra uma mensagem e espera o usuário pressionar ENTER.
// Isso evita que a tela troque rápido demais.

procedimento atualizar()
inicio
   escreval
   escreval("Pressione ENTER para continuar...")
   leia(tecla)
fimprocedimento

// PROCEDIMENTO PARA INICIALIZAR OS DADOS
// Aqui preenchemos os nomes dos componentes e zeramos
// todas as estruturas do sistema antes de começar.

procedimento inicializar_sistema()

inicio

   // Definimos o nome de cada componente da fábrica
   componentes[1] <- "Sensor"
   componentes[2] <- "Motor"
   componentes[3] <- "Placa"
   componentes[4] <- "Bateria"
   componentes[5] <- "Chassi"

   // Zera o estoque de todos os componentes
   para i de 1 ate TAM_COMPONENTES faca
      estoque[i] <- 0
   fimpara

   // Inicializa a pilha vazia
   topo <- 0  //significa que não há nenhum kit empilhado
   
    // Limpa todas as posições do vetor da pilha
   para i de 1 ate TAM_PILHA faca
      pilha_kits[i] <- ""
   fimpara

   // Inicializa a fila vazia
   inicio_fila <- 1   // início começa em 1
   fim_fila <- 0     // fim começa em 0 porque ainda não há elementos
   qtde_fila <- 0    // quantidade começa em 0

   // Limpa todas as posições do vetor da fila
   para i de 1 ate TAM_FILA faca
      fila_pedidos[i] <- ""
   fimpara

   // Inicializa todos os contadores do sistema com zero
   pedido_numero <- 0
   kit_numero <- 0
   total_produzidos <- 0
   total_entregues <- 0
   total_pedidos <- 0
fimprocedimento

// MENU PRINCIPAL
   // Esse procedimento apenas exibe as opções disponíveis ao usuário.
   
procedimento mostrar_menu()
inicio
   escreval
   escreval("=========== SISTEMA INDUSTRIAL ===========")
   escreval("1 - Receber insumos")
   escreval("2 - Ver estoque")
   escreval("3 - Produzir kit")
   escreval("4 - Registrar pedido")
   escreval("5 - Processar entrega")
   escreval("6 - Mostrar painel da fabrica")
   escreval("7 - Mostrar pilha de kits")
   escreval("8 - Mostrar fila de pedidos")
   escreval("0 - Encerrar sistema")
   escreval("==========================================")
fimprocedimento

// FUNÇÕES DA PILHA

// Verifica se a pilha chegou ao seu limite máximo

funcao pilha_cheia(): logico
inicio
   se topo = TAM_PILHA entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

// Verifica se a pilha está vazia

funcao pilha_vazia(): logico
inicio
   se topo = 0 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

// FUNÇÕES DA FILA

// Verifica se a fila já atingiu sua capacidade máxima

funcao fila_cheia(): logico
inicio
   se qtde_fila = TAM_FILA entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

// Verifica se a fila está vazia

funcao fila_vazia(): logico
inicio
   se qtde_fila = 0 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

// PROCEDIMENTO PARA MOSTRAR COMPONENTES

// Exibe a lista numerada dos componentes disponíveis.

procedimento mostrar_componentes()
inicio
   escreval("===== COMPONENTES =====")
   para i de 1 ate TAM_COMPONENTES faca
      escreval(i, " - ", componentes[i])
   fimpara
   escreval("=======================")
fimprocedimento

// PROCEDIMENTO RECEBER INSUMOS

// Esse bloco simula o setor de recebimento da fábrica.
// O usuário escolhe um componente e informa a quantidade recebida.
// O valor é somado ao estoque atual.

procedimento receber_insumos()
inicio
   escreval
   escreval("===== RECEBIMENTO DE INSUMOS =====")

    // Mostra a lista de componentes para o usuário escolher
   mostrar_componentes()

   // Pede o código do componente
   escreva("Digite o codigo do componente: ")
   leia(codigo)

   // Valida se o código informado existe
   se (codigo < 1) ou (codigo > TAM_COMPONENTES) entao
      escreval("Codigo invalido!")
   senao
   
      // Pede a quantidade recebida
      escreva("Digite a quantidade recebida: ")
      leia(quantidade)

      // Valida se a quantidade é positiva
      se quantidade <= 0 entao
         escreval("Quantidade invalida!")
      senao

         // Soma a nova quantidade ao estoque atual
         estoque[codigo] <- estoque[codigo] + quantidade

         // Mensagens de confirmação
         escreval("Insumo recebido com sucesso!")
         escreval(componentes[codigo], ": +", quantidade)
      fimse
   fimse
fimprocedimento

// PROCEDIMENTO MOSTRAR ESTOQUE

// Exibe a quantidade atual de cada componente.

procedimento mostrar_estoque()
inicio
   escreval
   escreval("=========== ESTOQUE ===========")
   para i de 1 ate TAM_COMPONENTES faca
      escreval(componentes[i], ": ", estoque[i])
   fimpara
   escreval("===============================")
fimprocedimento


// FUNCAO PARA VERIFICAR SE HA COMPONENTES

// Verifica se existe pelo menos 1 unidade de cada componente.
// Se faltar qualquer item, não é possível produzir um kit.

funcao pode_produzir(): logico
inicio
   se (estoque[1] >= 1) e (estoque[2] >= 1) e (estoque[3] >= 1) e (estoque[4] >= 1) e (estoque[5] >= 1) entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao

// PROCEDIMENTO EMPILHAR KIT

// Adiciona o nome de um kit no topo da pilha de kits produzidos.

procedimento empilhar_kit(nome_kit: caractere)
inicio
   se pilha_cheia() entao
      escreval("Pilha de kits cheia! Nao foi possivel armazenar o kit.")
   senao

      // Avança o topo em 1 posição
      topo <- topo + 1

      // Guarda o nome do kit na nova posição do topo
      pilha_kits[topo] <- nome_kit
      
      escreval("Kit enviado para a pilha de produtos prontos!")
   fimse
fimprocedimento

// PROCEDIMENTO PRODUZIR KIT

// Esse procedimento simula o setor de produção.
// Primeiro verifica se a pilha está cheia.
// Depois verifica se há estoque suficiente.
// Se tudo estiver correto, consome os componentes, cria um nome para o kit,
// empilha esse kit e atualiza o contador de produção.

procedimento produzir_kit()
var nome_kit: caractere
inicio
   escreval
   escreval("=========== PRODUCAO ===========")

   // Primeiro verifica se ainda cabe kit na pilha
   se pilha_cheia() entao
      escreval("Nao e possivel produzir: pilha de kits cheia!")
   senao

      // Depois verifica se o estoque permite produzir
      se pode_produzir() entao

         // Cada kit consome 1 unidade de cada componente
         estoque[1] <- estoque[1] - 1
         estoque[2] <- estoque[2] - 1
         estoque[3] <- estoque[3] - 1
         estoque[4] <- estoque[4] - 1
         estoque[5] <- estoque[5] - 1

         // Gera um novo número de kit
         kit_numero <- kit_numero + 1

         // Monta o nome do kit, por exemplo: "Kit 1"
         nome_kit <- "Kit " + numpcarac(kit_numero)

         // Empilha o kit produzido
         empilhar_kit(nome_kit)

         // Atualiza contador total de kits produzidos
         total_produzidos <- total_produzidos + 1

         escreval("Kit produzido com sucesso!")
         escreval("Identificacao: ", nome_kit)
      senao
         escreval("Nao ha componentes suficientes para produzir um kit.")
         escreval("Cada kit precisa de 1 Sensor, 1 Motor, 1 Placa, 1 Bateria e 1 Chassi.")
      fimse
   fimse
fimprocedimento

// PROCEDIMENTO MOSTRAR PILHA

// Exibe a pilha do topo para a base.
// Isso ajuda visualizar a lógica LIFO:
// o último que entrou é o primeiro a sair.

procedimento mostrar_pilha_kits()
inicio
   escreval
   escreval("======= KITS PRODUZIDOS (PILHA) =======")

   se topo = 0 entao
      escreval("Nenhum kit produzido.")
   senao
      escreval("              -TOPO-")

      // Mostra do topo até a base
      para i de topo ate 1 passo -1 faca
         escreval("           ----------------")
         escreval("           | ", pilha_kits[i], " |")
      fimpara
      escreval("           ----------------")
      escreval("              -BASE-")
   fimse

   escreval("=======================================")
fimprocedimento


// PROCEDIMENTO REGISTRAR PEDIDO

// Esse procedimento simula a entrada de novos pedidos na fila.
// Como fila trabalha por ordem de chegada, o pedido é colocado no fim.

procedimento registrar_pedido()
var nome_pedido: caractere
inicio
   escreval
   escreval("=========== PEDIDOS ===========")

   // Verifica se ainda cabe pedido na fila
   se fila_cheia() entao
      escreval("Fila de pedidos cheia! Nao e possivel registrar novos pedidos.")
   senao

      // Gera o número do novo pedido
      pedido_numero <- pedido_numero + 1

      // Atualiza total de pedidos criados
      total_pedidos <- total_pedidos + 1

      // Monta o nome do pedido: "Pedido 1"
      nome_pedido <- "Pedido " + numpcarac(pedido_numero)

      // Move o fim da fila para a próxima posição
      fim_fila <- fim_fila + 1

      // Se passar do limite, volta para o início (fila circular)
      se fim_fila > TAM_FILA entao
         fim_fila <- 1
      fimse

      // Armazena o pedido no final da fila
      fila_pedidos[fim_fila] <- nome_pedido

      // Atualiza a quantidade de pedidos na fila
      qtde_fila <- qtde_fila + 1

      escreval("Pedido registrado com sucesso!")
      escreval("Identificacao: ", nome_pedido)
   fimse
fimprocedimento


// PROCEDIMENTO MOSTRAR FILA

// Mostra todos os pedidos em espera.
// Como a fila é circular, podem existir dois cenários:
// 1) inicio <= fim
// 2) inicio > fim

procedimento mostrar_fila_pedidos()
inicio
   escreval
   escreval("======= FILA DE PEDIDOS =======")

   se qtde_fila = 0 entao
      escreval("Nenhum pedido aguardando.")
   senao

       // Caso simples: fila em sequência normal
      se inicio_fila <= fim_fila entao
         para i de inicio_fila ate fim_fila faca
            escreval(fila_pedidos[i])
         fimpara
      senao

         // Caso circular: mostrar do início até o fim do vetor
         para i de inicio_fila ate TAM_FILA faca
            escreval(fila_pedidos[i])
         fimpara

         // Depois mostrar do começo do vetor até o fim lógico da fila
         para i de 1 ate fim_fila faca
            escreval(fila_pedidos[i])
         fimpara
      fimse
   fimse

   escreval("================================")
fimprocedimento

// PROCEDIMENTO PROCESSAR ENTREGA

// Esse procedimento faz a logística:
// - remove 1 pedido da fila
// - remove 1 kit da pilha
// - registra 1 entrega realizada

procedimento processar_entrega()
var pedido_atual: caractere
    kit_atual: caractere
inicio
   escreval
   escreval("=========== LOGISTICA ===========")

   // Primeiro verifica se existe pedido aguardando
   se fila_vazia() entao
      escreval("Nao ha pedidos na fila para entregar.")
   senao

      // Depois verifica se existe kit pronto
      se pilha_vazia() entao
         escreval("Nao ha kits prontos na pilha para entrega.")
      senao
      
         // REMOVE O PEDIDO DA FILA
         
         // Guarda o pedido atual antes de removê-lo
         pedido_atual <- fila_pedidos[inicio_fila]

         // Limpa a posição
         fila_pedidos[inicio_fila] <- ""

         // Avança o início da fila
         inicio_fila <- inicio_fila + 1

         // Se passar do limite, volta para 1
         se inicio_fila > TAM_FILA entao
            inicio_fila <- 1
         fimse

         // Reduz a quantidade de pedidos aguardando
         qtde_fila <- qtde_fila - 1

          // REMOVE O KIT DA PILHA
          
         // Guarda o kit atual antes de removê-lo
         kit_atual <- pilha_kits[topo]

         // Limpa a posição do topo
         pilha_kits[topo] <- ""

         // Move o topo para baixo
         topo <- topo - 1

         // Atualiza contador de entregas
         total_entregues <- total_entregues + 1

         // Mostra o resultado da entrega processada
         escreval("Entrega processada com sucesso!")
         escreval("Pedido atendido : ", pedido_atual)
         escreval("Kit enviado     : ", kit_atual)
      fimse
   fimse
fimprocedimento

// PROCEDIMENTO MOSTRAR DEMANDAS

// Mostra quantos pedidos ainda aguardam
// e quantos kits estão prontos na pilha.

procedimento mostrar_demandas()
inicio
   escreval
   escreval("======= DEMANDAS PENDENTES =======")
   escreval("Pedidos aguardando: ", qtde_fila)
   escreval("Kits prontos na pilha: ", topo)
   escreval("==================================")
fimprocedimento


// PROCEDIMENTO MOSTRAR RELATORIO GERAL

// Esse é o quadro geral da fábrica.
// Mostra estoque, pilha, fila, produção, entregas e demandas.

procedimento mostrar_painel()
inicio
   escreval
   escreval("=========== PAINEL DA FABRICA ===========")
   escreval

   // Mostra o estoque atual
   escreval("ESTOQUE DE COMPONENTES")
   para i de 1 ate TAM_COMPONENTES faca
      escreval(componentes[i], ": ", estoque[i])
   fimpara
   escreval
   
   // Mostra os kits prontos
   escreval("KITS PRODUZIDOS (PILHA)")
   se topo = 0 entao
      escreval("Nenhum kit pronto.")
   senao
      para i de topo ate 1 passo -1 faca
         escreval("   | ", pilha_kits[i], " |")
      fimpara
   fimse
   escreval
   
   // Mostra a fila de pedidos
   escreval("PEDIDOS NA FILA")
   se qtde_fila = 0 entao
      escreval("Nenhum pedido aguardando.")
   senao
      se inicio_fila <= fim_fila entao
         para i de inicio_fila ate fim_fila faca
            escreval(fila_pedidos[i])
         fimpara
      senao
         para i de inicio_fila ate TAM_FILA faca
            escreval(fila_pedidos[i])
         fimpara

         para i de 1 ate fim_fila faca
            escreval(fila_pedidos[i])
         fimpara
      fimse
   fimse
   escreval

    // Mostra o total de entregas realizadas
   escreval("ENTREGAS REALIZADAS")
   escreval("Total entregues: ", total_entregues)

   escreval
   escreval("PRODUCAO")
   escreval("Total produzido: ", total_produzidos)

   escreval
   escreval("DEMANDAS")
   escreval("Pedidos pendentes: ", qtde_fila)

   escreval
   escreval("=========================================")
fimprocedimento

// PROCEDIMENTO RELATORIO EXTRA

// Mostra um resumo mais direto dos principais números da fábrica.

procedimento relatorio_resumido()
inicio
   escreval
   escreval("=========== RELATORIO INDUSTRIAL ===========")
   escreval("Total de pedidos gerados : ", total_pedidos)
   escreval("Total de kits produzidos : ", total_produzidos)
   escreval("Total de kits entregues  : ", total_entregues)
   escreval("Pedidos em espera        : ", qtde_fila)
   escreval("Kits prontos em estoque  : ", topo)
   escreval("===========================================")
fimprocedimento


// MENU SECUNDARIO OPCIONAL

// Esse menu está pronto, mas no código principal ele não está sendo chamado.
// Para ser usado futuramente se criarmos um submenu de relatórios.

procedimento menu_relatorios()
inicio
   escreval
   escreval("======= CONSULTAS RAPIDAS =======")
   escreval("1 - Mostrar estoque")
   escreval("2 - Mostrar pilha de kits")
   escreval("3 - Mostrar fila de pedidos")
   escreval("4 - Mostrar demandas")
   escreval("5 - Mostrar painel completo")
   escreval("6 - Mostrar relatorio resumido")
   escreval("0 - Voltar")
   escreval("=================================")
fimprocedimento


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   ativo <- verdadeiro
   inicializar_sistema()

   enquanto ativo faca
      limpatela
      mostrar_menu()
      escreva("Escolha uma opcao: ")
      leia(op)

      escolha op

         caso 1
            limpatela
            receber_insumos()
            atualizar()

         caso 2
            limpatela
            mostrar_estoque()
            atualizar()

         caso 3
            limpatela
            produzir_kit()
            atualizar()

         caso 4
            limpatela
            registrar_pedido()
            atualizar()

         caso 5
            limpatela
            processar_entrega()
            atualizar()

         caso 6
            limpatela
            mostrar_painel()
            atualizar()

         caso 7
            limpatela
            mostrar_pilha_kits()
            atualizar()

         caso 8
            limpatela
            mostrar_fila_pedidos()
            atualizar()

         caso 9
            // opcao extra escondida, adicionar no menu se quiser usar
            limpatela
            relatorio_resumido()
            atualizar()

         caso 0
            escreval("Encerrando o sistema...")
            ativo <- falso

         outrocaso
            escreval("Opcao invalida!")
            atualizar()

      fimescolha
   fimenquanto

   limpatela
   escreval("Sistema finalizado com sucesso.")

Fimalgoritmo