            #language:pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que acesso a página de login da EBAC-SHOP

            Esquema do Cenário: Autenticação de multiplos usuários
            Quando eu digitar <user> e <password>
            Então deve executar a seguinte <mensagem>

            Exemplos:
            | usuario                  | senha  | mensagem                                         |
            | "ana@shop.ebac.com.br"   | "123@" | "Seja bem-vinda Ana!"                             |
            | "maria#shop.ebac.com.br" | "321@" | mensagem de alerta: "Usuário ou senha inválidos" |
            | "clara@shop.ebac.com.br" | "..."  | mensagem de alerta: "Usuário ou senha inválidos" |
