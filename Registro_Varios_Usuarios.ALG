Algoritmo "Registros"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/03/2026

Tipo
// Registro tem que ser declarado o tipo
   usuario = registro
      nome : caractere
      idade : inteiro
      bairro : caractere
      cidade : caractere
   fimregistro


Var
// Seção de Declarações das variáveis 

cad_usuarios : vetor[1..3] de usuario // variavel mista
ind : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

escreval ("Novo Cadastro de Usuarios")
escreval ("")

   // laço de repetição - Inserção dos Dados
   para ind de 1 ate 2 faca

      escreva ("Digite o Nome Completo do Usuário:")
      leia (cad_usuarios[ind].nome)

      escreva ("Digite a Idade do Usuário:")
      leia (cad_usuarios[ind].idade)

      escreva ("Digite o Bairro do Usuário:")
      leia (cad_usuarios[ind].bairro)

      escreva ("Digite a cidade do Usuário:")
      leia (cad_usuarios[ind].cidade)

      escreval("")
      escreval("Entre com o próximo usuário:")
      escreval ("")


   fimpara


 //Retorno dos dados do Cadastro do Usuário
   escreval ("Usuarios Cadastrados!")

 //Usuario(a): Nome Completo, tem Idade anos,
 //é do Bairro da Cidade
 
   para ind de 1 ate 2 faca

      escreva ("Usuário(a): ", cad_usuarios[ind].nome)
      escreva (" tem", cad_usuarios[ind].idade," anos,")
      escreva (" é do Bairro ", cad_usuarios[ind].bairro)
      escreval (" da cidade ", cad_usuarios[ind].cidade,".")


   fimpara

Fimalgoritmo