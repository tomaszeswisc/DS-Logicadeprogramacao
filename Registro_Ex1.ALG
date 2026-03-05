Algoritmo "CadastroProdutos"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/03/2026


Tipo

  produtos = registro
    nome: caractere
    preco: real

  fimregistro

Var
// Seção de Declarações das variáveis 

produtos : vetor[1..3] de produtos
i: inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


escreva("=== Cadastro de Produtos ===")

// Laço de Cadastro dos Produtos

   para i de 1 ate 3 faca
   
        escreval
        escreval("Entre com o Produto ", i)
        
        escreva("Produto: ")
        leia(produtos[i].nome)
        
        escreva("Preço: R$ ")
        leia(produtos[i].preco)
        
   fimpara
   
//Laço de Exibição

limpatela

   para i de 1 ate 3 faca

        escreval("Produto: ", i)
        escreval("Nome: ", produtos[i].nome)
        escreval("Preço: R$", produtos[i].preco)
        escreval("----------------------")

   fimpara


Fimalgoritmo