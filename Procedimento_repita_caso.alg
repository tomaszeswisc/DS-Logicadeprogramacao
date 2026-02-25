Algoritmo "procedSomaSub"
// Disciplina   : [Lógica de Programação]
// Professor   : Hilton Elias
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/02/2026
Var
// Seção de Declarações das variáveis

n1, n2, n3 : real
resp: inteiro

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
escreval("#####################################")
escreval("#######  Teste de Procedimento ######")
escreval("#        O que deseja fazer?        #")
escreval("#####################################")
escreval("# 1 - para somar N1 + N2            #")
escreval("# 2 - para somar N1 + N2 + N3       #")
escreval("# 3 - para subtrair N1 - N2         #")
escreval("# 4 - para subtrair N1 - N2 - N3    #")
escreval("# 5 - para sair                     #")
escreval("#####################################")
escreva("Digite sua Opção:            ")

fimprocedimento


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...



escreva("Digite o 1º numero: ")
leia(n1)
escreva("Digite o 2º numero: ")
leia(n2)
escreva("Digite o 3º numero: ")
leia(n3)

 repita
      limpatela
 escreva("1º Numero =", N1, ", ")
 escreva("2ºNumero =", N2, " e ")
 escreval("3ºNumero =", N3, ".")
 escreval("")
       Opcao()
      leia(resp)

      escolha resp
      caso 1
         Somar2()
      caso 2
         Somar3()
      caso 3
         Sub2()
      caso 4
         Sub3()
      caso 5

      outrocaso
         timer 600 on
         escreval("Opcao invalida!")
         timer 0 on
   fimescolha

      se (resp >= 1) e (resp <= 4) entao
         escreval()
         escreval("Digite 0 para Opções ou 5 para sair:")
         escreva("Digite sua Opção:")
         leia(resp)
      fimse

   ate resp = 5
   escreval("Saindo...")

Fimalgoritmo
