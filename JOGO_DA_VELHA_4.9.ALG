Algoritmo "Jogo_Da_Velha_4.9"
//Projeto - 1
//Grupo: ""Unidos Pelo Objetivo""

//Disciplina: Conceitos de Algoritmos
//Professor: Gilberto Viana de Oliveira

//Desenvolvido por:
// Arthur de Freitas Carvalho
// Gabriel Antonio Pereira de Camargos
// Gabriel Henrique Moreira de Souza
// Gabriel Henrique da Silva Rocha
// Raul Gomes Neto
// Victor Reis

Var
   escolhaMenu, vitoriasPrimeiro, vitoriasSegundo, vitoriasMaior, contadorPartidas, velhas, jogadaUm, jogadaDois, jogadaTres, jogadaQuatro, jogadaCinco, jogadaSeis, jogadaSete, jogadaOito, jogadaNove: inteiro
   maiorVencedor, jogadorUm, jogadorDois, n01, n02, n03, n04, n05, n06, n07, n08, n09: caractere
   taxaVitoria, taxaVelha: real

Inicio

   //Nome jogador 1
   escreval("Digite o nome do primeiro jogador:")
   leia(jogadorUm)

   se (jogadorUm = "")entao
      repita
         //Impedir o usuário de iniciar o jogo sem inserir o nome
         escreval("Você não digitou um nome, tente novamente:")
         leia(jogadorUm)
      ate(jogadorUm <> "")
   fimse

   //Nome jogador 2
   escreval("Digite o nome do segundo jogador:")
   leia(jogadorDois)

   se (jogadorDois = jogadorUm) ou (jogadorDois = "") entao
      repita
         escreval("Os nomes são iguais ou você não digitou um nome, tente outro:")
         leia(jogadorDois)
      ate (jogadorDois <> jogadorUm) e (jogadorDois <> "")
   fimse

   //Menu
   limpatela
   repita
      escreval("-------------------------|")
      escreval("    Escolha uma opção    |")
      escreval("-------------------------|")
      escreval("1 - Jogar uma partida    |")
      escreval("-------------------------|")
      escreval("2 - Alterar nomes        |")
      escreval("-------------------------|")
      escreval("3 - Placar atual         |")
      escreval("-------------------------|")
      escreval("4 - Estatísticas gerais  |")
      escreval("-------------------------|")
      escreval("5 - Encerrar o jogo      |")
      escreval("-------------------------|")
      leia(escolhaMenu)
      limpatela()

      escolha(escolhaMenu)

         //Opção 1 do menu (Jogar uma partida)
      caso 1
         //Definindo a tabela de jogadas
         n01 <- "1"
         n02 <- "2"
         n03 <-  "3"
         n04 <- "4"
         n05 <- "5"
         n06 <- "6"
         n07 <- "7"
         n08 <- "8"
         n09 <- "9"

         //Zerando as jogadas
         jogadaUm <- 0
         jogadaDois <- 0
         jogadaTres <- 0
         jogadaQuatro <- 0
         jogadaCinco <- 0
         jogadaSeis <- 0
         jogadaSete <- 0
         jogadaOito <- 0
         jogadaNove <- 0

         //Tabela de jogadas
         escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
         escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
         escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

         //jogada 1
         enquanto  (jogadaUm<1) ou (jogadaUm>9)  faca
            //Condição para que o usuário não digite uma jogada inválida
            escreval("")
            escreva(jogadorUm," faça sua jogada:")
            leia(jogadaUm)
         fimenquanto

         //Definindo a jogada 1 na tabela
         se  (jogadaUm=1)  entao
            n01<- "X"
         senao
            se  (jogadaUm=2)  entao
               n02 <- "X"
            senao
               se  (jogadaUm=3)  entao
                  n03 <- "X"
               senao
                  se (jogadaUm=4) entao
                     n04 <- "X"
                  senao
                     se(jogadaUm=5) entao
                        n05 <- "X"
                     senao
                        se(jogadaUm=6) entao
                           n06 <- "X"
                        senao
                           se(jogadaUm=7) entao
                              n07 <- "X"
                           senao
                              se(jogadaUm=8) entao
                                 n08 <- "X"
                              senao
                                 se(jogadaUm=9) entao
                                    n09 <- "X"
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         limpatela()

         //Reescrevendoa a tabela com a jogada 1
         escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
         escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
         escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

         //Jogada 2
         enquanto  (jogadaDois<1) ou (jogadaDois>9) ou (jogadaDois=jogadaUm)  faca
            //Condição para que o usuário não digite uma jogada inválida ou uma jogada igual a anteiror
            escreval("")
            escreva(jogadorDois," faça sua jogada: ")
            leia(jogadaDois)
         fimenquanto

         //Definindo a jogada 2 na tabela
         se  (jogadaDois=1)  entao
            n01<- "O"
         senao
            se  (jogadaDois=2)  entao
               n02 <- "O"
            senao
               se  (jogadaDois=3)  entao
                  n03 <- "O"
               senao
                  se (jogadaDois=4) entao
                     n04 <- "O"
                  senao
                     se(jogadaDois=5) entao
                        n05 <- "O"
                     senao
                        se(jogadaDois=6) entao
                           n06 <- "O"
                        senao
                           se(jogadaDois=7) entao
                              n07 <- "O"
                           senao
                              se(jogadaDois=8) entao
                                 n08 <- "O"
                              senao
                                 se(jogadaDois=9) entao
                                    n09 <- "O"
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         limpatela()

         //Reescrevendo a tabela com as jogadas 1 e 2
         escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
         escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
         escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

         //Jogada 3
         enquanto  (jogadaTres<1) ou (jogadaTres>9) ou (jogadaTres=jogadaUm) ou (jogadaTres=jogadaDois)  faca
            //Condição para que o usuário não digite uma jogada inválida ou uma jogada igual a anteiror
            escreval("")
            escreva(jogadorUm," faça sua jogada:")
            leia(jogadaTres)
         fimenquanto

         //Definindo a jogada 3 na tabela
         se  (jogadaTres=1)  entao
            n01<- "X"
         senao
            se  (jogadaTres=2)  entao
               n02 <- "X"
            senao
               se  (jogadaTres=3)  entao
                  n03 <- "X"
               senao
                  se (jogadaTres=4) entao
                     n04 <- "X"
                  senao
                     se(jogadaTres=5) entao
                        n05 <- "X"
                     senao
                        se(jogadaTres=6) entao
                           n06 <- "X"
                        senao
                           se(jogadaTres=7) entao
                              n07 <- "X"
                           senao
                              se(jogadaTres=8) entao
                                 n08 <- "X"
                              senao
                                 se(jogadaTres=9) entao
                                    n09 <- "X"
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         limpatela()

         //Reescrevendo a tabela com as jogadas 1, 2 e 3
         escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
         escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
         escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

         //Jogada 4
         enquanto  (jogadaQuatro<1) ou (jogadaQuatro>9) ou (jogadaQuatro=jogadaUm) ou (jogadaQuatro=jogadaDois) ou (jogadaQuatro=jogadaTres)  faca
            //Condição para que o usuário não digite uma jogada inválida ou uma jogada igual a anteiror
            escreval("")
            escreva(jogadorDois," faça sua jogada: ")
            leia(jogadaQuatro)
         fimenquanto

         //Definindo a jogada 4 na tabela
         se  (jogadaQuatro=1)  entao
            n01<- "O"
         senao
            se  (jogadaQuatro=2)  entao
               n02 <- "O"
            senao
               se  (jogadaQuatro=3)  entao
                  n03 <- "O"
               senao
                  se (jogadaQuatro=4) entao
                     n04 <- "O"
                  senao
                     se(jogadaQuatro=5) entao
                        n05 <- "O"
                     senao
                        se(jogadaQuatro=6) entao
                           n06 <- "O"
                        senao
                           se(jogadaQuatro=7) entao
                              n07 <- "O"
                           senao
                              se(jogadaQuatro=8) entao
                                 n08 <- "O"
                              senao
                                 se(jogadaQuatro=9) entao
                                    n09 <- "O"
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         limpatela()

         //Reescrevendo a tabela com as jogadas 1, 2, 3 e 4
         escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
         escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
         escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

         //Jogada 5
         enquanto  (jogadaCinco<1) ou (jogadaCinco>9) ou (jogadaCinco=jogadaUm) ou (jogadaCinco=jogadaDois) ou (jogadaCinco=jogadaTres) ou (jogadaCinco=jogadaQuatro)  faca
            //Condição para que o usuário não digite uma jogada inválida ou uma jogada igual a anteiror
            escreval("")
            escreva(jogadorUm," faça sua jogada:")
            leia(jogadaCinco)
         fimenquanto

         //Definindo a jogada 5 na tabela
         se  (jogadaCinco=1)  entao
            n01<- "X"
         senao
            se  (jogadaCinco=2)  entao
               n02 <- "X"
            senao
               se  (jogadaCinco=3)  entao
                  n03 <- "X"
               senao
                  se (jogadaCinco=4) entao
                     n04 <- "X"
                  senao
                     se(jogadaCinco=5) entao
                        n05 <- "X"
                     senao
                        se(jogadaCinco=6) entao
                           n06 <- "X"
                        senao
                           se(jogadaCinco=7) entao
                              n07 <- "X"
                           senao
                              se(jogadaCinco=8) entao
                                 n08 <- "X"
                              senao
                                 se(jogadaCinco=9) entao
                                    n09 <- "X"
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         limpatela()

         //A partir da jogada 5 é possível que haja um vencedor

         se (n07 = "X") e (n08 = "X") e (n09 = "X") ou (n04 = "X") e (n05 = "X") e (n06 = "X") ou (n01 = "X") e (n02 = "X") e (n03 = "X") ou (n01 = "X") e (n04 = "X") e (n07 = "X") ou (n02 = "X") e (n05 = "X") e (n08 = "X") ou (n07="X") e (n04="X") e (n01="X") ou (n08="X") e (n05="X") e (n02="X") ou (n09="X") e (n06="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n09="X") e (n05="X") e (n01="X")   entao
            //Condições de vitória jogador 1, o qual joga com "X"
            escreva("")

         senao
            //Condições de vitória jogador 2, o qual joga com "O"
            se (n07 = "O") e (n08 = "O") e (n09 = "O") ou (n04 = "O") e (n05 = "O") e (n06 = "O") ou (n01 = "O") e (n02 = "O") e (n03 = "O") ou (n01 = "O") e (n04 = "O") e (n07 = "O") ou (n02 = "O") e (n05 = "O") e (n08 = "O") ou (n07="O") e (n04="O") e (n01="O") ou (n08="O") e (n05="O") e (n02="O") ou (n09="O") e (n06="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n09="O") e (n05="O") e (n01="O")   entao
               escreva("")

            senao
               //Se nenhum jogador vencer na jogada 5, segue o jogo

               //Reescrevendo a tabela com as jogadas 1, 2, 3, 4 e 5
               escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
               escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
               escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

               //Jogada 6
               enquanto  (jogadaSeis<1) ou (jogadaSeis>9) ou (jogadaSeis=jogadaUm) ou (jogadaSeis=jogadaDois) ou (jogadaSeis=jogadaTres) ou (jogadaSeis=jogadaQuatro) ou (jogadaSeis=jogadaCinco)  faca
                  //Condição para que o usuário não digite uma jogada inválida ou uma jogada igual a anteiror
                  escreval("")
                  escreva(jogadorDois," faça sua jogada: ")
                  leia(jogadaSeis)
               fimenquanto

               //Definindo a jogada 6 na tabela
               se  (jogadaSeis=1)  entao
                  n01<- "O"
               senao
                  se  (jogadaSeis=2)  entao
                     n02 <- "O"
                  senao
                     se  (jogadaSeis=3)  entao
                        n03 <- "O"
                     senao
                        se (jogadaSeis=4) entao
                           n04 <- "O"
                        senao
                           se(jogadaSeis=5) entao
                              n05 <- "O"
                           senao
                              se(jogadaSeis=6) entao
                                 n06 <- "O"
                              senao
                                 se(jogadaSeis=7) entao
                                    n07 <- "O"
                                 senao
                                    se(jogadaSeis=8) entao
                                       n08 <- "O"
                                    senao
                                       se(jogadaSeis=9) entao
                                          n09 <- "O"
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         limpatela()

         //Condições de vitória jogador 1, "X"
         se (n07 = "X") e (n08 = "X") e (n09 = "X") ou (n04 = "X") e (n05 = "X") e (n06 = "X") ou (n01 = "X") e (n02 = "X") e (n03 = "X") ou (n01 = "X") e (n04 = "X") e (n07 = "X") ou (n02 = "X") e (n05 = "X") e (n08 = "X") ou (n07="X") e (n04="X") e (n01="X") ou (n08="X") e (n05="X") e (n02="X")ou (n09="X") e (n06="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n09="X") e (n05="X") e (n01="X")   entao
            escreva("")

         senao
            //Condições de vitória jogador 2, "O"
            se (n07 = "O") e (n08 = "O") e (n09 = "O") ou (n04 = "O") e (n05 = "O") e (n06 = "O") ou (n01 = "O") e (n02 = "O") e (n03 = "O") ou (n01 = "O") e (n04 = "O") e (n07 = "O") ou (n02 = "O") e (n05 = "O") e (n08 = "O") ou (n07="O") e (n04="O") e (n01="O") ou (n08="O") e (n05="O") e (n02="O")ou (n09="O") e (n06="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n09="O") e (n05="O") e (n01="O")   entao
               escreva("")

            senao
               //Se nenhum jogador vencer na jogada 6, segue o jogo

               //Reescrevendo a tabela com as jogadas 1, 2, 3, 4, 5 e 6
               escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
               escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
               escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

               //Jogada 7
               enquanto  (jogadaSete<1) ou (jogadaSete>9) ou (jogadaSete=jogadaUm) ou (jogadaSete=jogadaDois) ou (jogadaSete=jogadaTres) ou (jogadaSete=jogadaQuatro) ou (jogadaSete=jogadaCinco) ou (jogadaSete=jogadaSeis)  faca
                  //Condição para que o usuário não digite uma jogada inválida ou uma jogada igual a anteiror
                  escreval("")
                  escreva(jogadorUm," faça sua jogada:")
                  leia(jogadaSete)
               fimenquanto

               //Definindo a jogada 7 na tabela
               se  (jogadaSete=1)  entao
                  n01<- "X"
               senao
                  se  (jogadaSete=2)  entao
                     n02 <- "X"
                  senao
                     se  (jogadaSete=3)  entao
                        n03 <- "X"
                     senao
                        se (jogadaSete=4) entao
                           n04 <- "X"
                        senao
                           se(jogadaSete=5) entao
                              n05 <- "X"
                           senao
                              se(jogadaSete=6) entao
                                 n06 <- "X"
                              senao
                                 se(jogadaSete=7) entao
                                    n07 <- "X"
                                 senao
                                    se(jogadaSete=8) entao
                                       n08 <- "X"
                                    senao
                                       se(jogadaSete=9) entao
                                          n09 <- "X"
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         limpatela()

         se (n07 = "X") e (n08 = "X") e (n09 = "X") ou (n04 = "X") e (n05 = "X") e (n06 = "X") ou (n01 = "X") e (n02 = "X") e (n03 = "X") ou (n01 = "X") e (n04 = "X") e (n07 = "X") ou (n02 = "X") e (n05 = "X") e (n08 = "X") ou (n07="X") e (n04="X") e (n01="X") ou (n08="X") e (n05="X") e (n02="X")ou (n09="X") e (n06="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n09="X") e (n05="X") e (n01="X")   entao
            //Condições de vitória jogador 1, "X"
            escreva("")

         senao
            se (n07 = "O") e (n08 = "O") e (n09 = "O") ou (n04 = "O") e (n05 = "O") e (n06 = "O") ou (n01 = "O") e (n02 = "O") e (n03 = "O") ou (n01 = "O") e (n04 = "O") e (n07 = "O") ou (n02 = "O") e (n05 = "O") e (n08 = "O") ou (n07="O") e (n04="O") e (n01="O") ou (n08="O") e (n05="O") e (n02="O")ou (n09="O") e (n06="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n09="O") e (n05="O") e (n01="O")   entao
               //Condições de vitória jogador 2, "O"
               escreva("")

            senao
               //Se nenhum jogador vencer na jogada 7, segue o jogo

               //Reescrevendo a tabela com as jogadas 1, 2, 3, 4, 5, 6 e 7
               escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
               escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
               escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

               //Jogada 8
               enquanto  (jogadaOito<1) ou (jogadaOito>9) ou (jogadaOito=jogadaUm) ou (jogadaOito=jogadaDois) ou (jogadaOito=jogadaTres) ou (jogadaOito=jogadaQuatro) ou (jogadaOito=jogadaCinco) ou (jogadaOito=jogadaSeis) ou (jogadaOito=jogadaSete)  faca
                  //Condição para que o usuário não digite uma jogada inválida ou uma jogada igual a anteiror
                  escreval("")
                  escreva(jogadorDois," faça sua jogada: ")
                  leia(jogadaOito)
               fimenquanto

               //Definindo a jogada 8 na tabela
               se  (jogadaOito=1)  entao
                  n01<- "O"
               senao
                  se  (jogadaOito=2)  entao
                     n02 <- "O"
                  senao
                     se  (jogadaOito=3)  entao
                        n03 <- "O"
                     senao
                        se (jogadaOito=4) entao
                           n04 <- "O"
                        senao
                           se(jogadaOito=5) entao
                              n05 <- "O"
                           senao
                              se(jogadaOito=6) entao
                                 n06 <- "O"
                              senao
                                 se(jogadaOito=7) entao
                                    n07 <- "O"
                                 senao
                                    se(jogadaOito=8) entao
                                       n08 <- "O"
                                    senao
                                       se(jogadaOito=9) entao
                                          n09 <- "O"
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         limpatela()

         se (n07 = "X") e (n08 = "X") e (n09 = "X") ou (n04 = "X") e (n05 = "X") e (n06 = "X") ou (n01 = "X") e (n02 = "X") e (n03 = "X") ou (n01 = "X") e (n04 = "X") e (n07 = "X") ou (n02 = "X") e (n05 = "X") e (n08 = "X") ou (n07="X") e (n04="X") e (n01="X") ou (n08="X") e (n05="X") e (n02="X")ou (n09="X") e (n06="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n09="X") e (n05="X") e (n01="X")   entao
            //Condições de vitória jogador 1, "X"
            escreva("")
         senao
            se (n07 = "O") e (n08 = "O") e (n09 = "O") ou (n04 = "O") e (n05 = "O") e (n06 = "O") ou (n01 = "O") e (n02 = "O") e (n03 = "O") ou (n01 = "O") e (n04 = "O") e (n07 = "O") ou (n02 = "O") e (n05 = "O") e (n08 = "O") ou (n07="O") e (n04="O") e (n01="O") ou (n08="O") e (n05="O") e (n02="O")ou (n09="O") e (n06="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n09="O") e (n05="O") e (n01="O")   entao
               //Condições de vitória jogador 2, "O"
               escreva("")

            senao
               //Se nenhum jogador vencer na jogada 8, segue o jogo

               //Reescrevendo a tabela com as jogadas 1, 2, 3, 4, 5, 6, 7 e 8
               escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
               escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
               escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

               //Jogada 9
               enquanto  (jogadaNove<1) ou (jogadaNove>9) ou (jogadaNove=jogadaUm) ou (jogadaNove=jogadaDois) ou (jogadaNove=jogadaTres) ou (jogadaNove=jogadaQuatro) ou (jogadaNove=jogadaCinco) ou (jogadaNove=jogadaSeis) ou (jogadaNove=jogadaSete) ou (jogadaNove=jogadaOito)  faca
                  //Condição para que o usuário não digite uma jogada inválida ou uma jogada igual a anteiror
                  escreval("")
                  escreva(jogadorUm," faça sua jogada:")
                  leia(jogadaNove)
               fimenquanto

               //Definindo a jogada 9 na tabela
               se  (jogadaNove=1)  entao
                  n01<- "X"
               senao
                  se  (jogadaNove=2)  entao
                     n02 <- "X"
                  senao
                     se  (jogadaNove=3)  entao
                        n03 <- "X"
                     senao
                        se (jogadaNove=4) entao
                           n04 <- "X"
                        senao
                           se(jogadaNove=5) entao
                              n05 <- "X"
                           senao
                              se(jogadaNove=6) entao
                                 n06 <- "X"
                              senao
                                 se(jogadaNove=7) entao
                                    n07 <- "X"
                                 senao
                                    se(jogadaNove=8) entao
                                       n08 <- "X"
                                    senao
                                       se(jogadaNove=9) entao
                                          n09 <- "X"
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         limpatela()

         //Reescrevendo a tabela com todas as jogadas
         escreval(n07," ", "|"," ", n08, " ","|", " ", n09)
         escreval(n04," ", "|"," ", n05, " ","|", " ", n06)
         escreval(n01," ", "|"," ", n02, " ","|", " ", n03)

         //Condição de vitória jogador 1, "X"
         se (n07 = "X") e (n08 = "X") e (n09 = "X") ou (n04 = "X") e (n05 = "X") e (n06 = "X") ou (n01 = "X") e (n02 = "X") e (n03 = "X") ou (n01 = "X") e (n04 = "X") e (n07 = "X") ou (n02 = "X") e (n05 = "X") e (n08 = "X") ou (n07="X") e (n04="X") e (n01="X") ou (n08="X") e (n05="X") e (n02="X")ou (n09="X") e (n06="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n07="X") e (n05="X") e (n03="X") ou (n09="X") e (n05="X") e (n01="X")   entao
            //Escreve na tela que o jogador 1 venceu
            escreval(jogadorUm,", você venceu!")
            //Variável contadora de vitórias do jogador 1 recebe + 1
            vitoriasPrimeiro<- vitoriasPrimeiro + 1

         senao
            //Condição de vitória jogador 2
            se (n07 = "O") e (n08 = "O") e (n09 = "O") ou (n04 = "O") e (n05 = "O") e (n06 = "O") ou (n01 = "O") e (n02 = "O") e (n03 = "O") ou (n01 = "O") e (n04 = "O") e (n07 = "O") ou (n02 = "O") e (n05 = "O") e (n08 = "O") ou (n07="O") e (n04="O") e (n01="O") ou (n08="O") e (n05="O") e (n02="O")ou (n09="O") e (n06="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n07="O") e (n05="O") e (n03="O") ou (n09="O") e (n05="O") e (n01="O")   entao
               //Escreve na tela que o jogador 2 venceu
               escreval(jogadorDois,", você venceu!")
               //Variável contadora de vitórias do jogador 2 recebe + 1
               vitoriasSegundo<- vitoriasSegundo + 1

            senao
               //Se nenhum jogador venceu, então deu velha
               escreval("SEU JOGO DEU VELHA")
               //Variável contadora de velhas recebe + 1
               velhas <- velhas + 1
            fimse
         fimse

         //Contadora de partidas recebe + 1
         contadorPartidas <- contadorPartidas + 1

         //Condição para definir o maior vencedor

         //Jogador 1
         //Condições para o jogador 1 ser o maior vencedor
         se(vitoriasPrimeiro > vitoriasSegundo) e (vitoriasPrimeiro>vitoriasMaior) entao
            //Definindo o jogador 1 como maior vencedor
            maiorVencedor <- jogadorUm
            //Variável contadora de maior vencedor recebe as vitórias do jogador 1
            vitoriasMaior <- vitoriasPrimeiro

         senao
            //Jogador 2
            //Condições para o jogador 2 ser o maior vencedor
            se(vitoriasSegundo > vitoriasPrimeiro) e (vitoriasSegundo>vitoriasMaior) entao
               //Definindo o jogador 2 como maior vencedor
               maiorVencedor <- jogadorDois
               //Variável contadora de maior vencedor recebe as vitórias do jogador 2
               vitoriasMaior <- vitoriasSegundo
            fimse
         fimse

         //Calculando o percentual de vitórias do maior vencedor
         taxaVitoria <- vitoriasMaior / contadorPartidas * 100
         //Culculando o percentual de partidas que deram velha
         taxaVelha <- velhas / contadorPartidas * 100

         //Opção 2 do menu (alterar os nomes)
      caso 2
         //Aqui o jogador pode definir qualquer caractere para ser o nome

         //Nome jogador 1
         escreval("Digite o nome do primeiro jogador:")
         leia(jogadorUm)

         se (jogadorUm = "")entao
            repita
               //Impedir o usuário de iniciar o jogo sem inserir o nome
               escreval("Você não digitou um nome, tente novamente:")
               leia(jogadorUm)
            ate(jogadorUm <> "")
         fimse

         //Nome jogador 2
         escreval("Digite o nome do segundo jogador:")
         leia(jogadorDois)

         se (jogadorDois = jogadorUm) ou (jogadorDois = "") entao
            repita
               escreval("Os nomes são iguais ou você não digitou um nome, tente outro:")
               leia(jogadorDois)
            ate (jogadorDois <> jogadorUm) e (jogadorDois <> "")
         fimse
         //Resetando a quantidade de vítórias dos jogadores anteriores
         vitoriasPrimeiro <- 0
         vitoriasSegundo <- 0

         //Opção 3 do menu (Mostrar o placar atual)
      caso 3
         //Condição para quando o placar estiver empatado
         se vitoriasPrimeiro = vitoriasSegundo entao
            escreval("Jogo empatado: ")
            escreval(jogadorUm, vitoriasPrimeiro," -", vitoriasSegundo, " ", jogadorDois)
            escreval(" ")
         senao
            //Condição para quando não estiver empatado
            //Mostrando o placar
            escreval(jogadorUm, vitoriasPrimeiro," -", vitoriasSegundo, " ", jogadorDois)
         fimse

         //Opção 4 do menu (Estatística gerais)
      caso 4

         //Definindo as estatísticas
         escreval("O maior vencedor é: ", maiorVencedor)
         escreval("A taxa vitória é: ", taxaVitoria, "%")
         escreval("Sua quantidade de vitórias é: ",vitoriasMaior)
         escreval("A porcentagem de jogos que terminaram em velha é: ",taxaVelha,"%")

         //Encerra o programa
      caso 5
         escreval("Programa encerrado.")
      fimescolha
   ate(escolhaMenu = 5)
   
Fimalgoritmo