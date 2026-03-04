Algoritmo "Cadastro_Usuario_Unico"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/03/2026


Tipo
      usuario = registro
      nome : caractere
      idade : inteiro
      bairro : caractere
      cidade : caractere
   fimregistro
   

Var
// Seção de Declarações das variáveis 

cad_usuario : usuario

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval ("Cadastro de Usuario")

   escreva ("Digite o Nome Completo:")
   leia (cad_usuario.nome)

   escreva ("Digite a Idade:")
   leia (cad_usuario.idade)

   escreva ("Digite o Bairro:")
   leia (cad_usuario.bairro)

   escreva ("Digite a Cidade:")
   leia (cad_usuario.cidade)

   limpatela
   
   escreval ("Dados Cadastrados:")
   escreval ("Nome: ", cad_usuario.nome)
   escreval ("Idade: ", cad_usuario.idade)
   escreval ("Bairro: ", cad_usuario.bairro)
   escreval ("Cidade: ", cad_usuario.cidade)
   





fimalgoritmo