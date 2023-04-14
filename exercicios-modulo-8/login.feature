            #language:pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que acesso a página de login da EBAC-SHOP

            Cenário: Login válido
            Quando eu digitar o usuário "fulano@shop.ebac.com.br"
            E a senha "123@"
            Então deve exibir a tela de checkout

            Cenário: Usuário inválido
            Quando eu digitar o usuário "beltrano@shop.ebac.com.br"
            E a senha "123@"
            Então deve exibir a mensagem de alerta: "Usuário ou senha inválidos"

            Cenário: Senha inválido
            Quando eu digitar o usuário "fulano@shop.ebac.com.br"
            E a senha "@321"
            Então deve exibir a mensagem de alerta: "Usuário ou senha inválidos"


            Esquema do Cenário: Autenticação de multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a tela de checkout

            Exemplos:
            | usuario                  | senha  |
            | "ana@shop.ebac.com.br"   | "123@" |
            | "maria@shop.ebac.com.br" | "321@" |
            | "clara@shop.ebac.com.br" | "132@" |
