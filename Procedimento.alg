Algoritmo "procedSomaSub"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/02/2026
Var
// Seção de Declarações das variáveis

n1, n2, n3, resp : real


procedimento Somar2()
Var // variaveis do procedimento

inicio // inicio do procedimento
    Escreval("A soma é: ", n1+n2)
fimprocedimento


procedimento Somar3()
Var // variaveis do procedimento

inicio // inicio do procedimento
    Escreval("A soma é: ", n1+n2+n3)
fimprocedimento


procedimento Sub2()
Var // variaveis do procedimento

inicio // inicio do procedimento
    Escreval("A subtração é: ", n1-n2)
fimprocedimento


procedimento Sub3()
Var // variaveis do procedimento

inicio // inicio do procedimento
    Escreval("A subtração é: ", n1-n2-n3)
fimprocedimento


procedimento Opcao()
Var // variaveis do procedimento

inicio // inicio do procedimento
escreval("O que deseja fazer?")
escreval("1 - para somar N1 + N2")
escreval("2 - para somar N1 + N2 + N3")
escreval("3 - para subtrair N1 - N2")
escreval("4 - para subtrair N1 - N2 - N3")
escreval("5 - para sair")
fimprocedimento


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...



escreva("Digite o 1º numero: ")
leia(n1)
escreva("Digite o 2º numero: ")
leia(n2)
escreva("Digite o 3º numero: ")
leia(n3)

limpatela

opcao()

leia(resp)

se resp = 1 entao
    somar2()
senao
     se resp = 2 entao
     somar3()
  senao
     se resp = 3 entao
     sub2()
  senao
  sub3()
fimse
fimse

Fimalgoritmo
fimse
