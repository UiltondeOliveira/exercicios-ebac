            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que acesso a tela de cadastro da EBAC-SHOP

            Esquema do Cenário: Realizar cadastro na plataforma.
            Quando preencho todos os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>.
            Então deve executar a seguinte <acao>

            Exemplos:
            | nome    | sobrenome  | pais     | endereco             | cidade         | cep         | telefone          | email                    | acao                                                                      |
            | "José " | "da Silva" | "Brasil" | "Rua da mata, 118"   | "São Paulo/SP" | "11090-000" | "(11) 99123-4567" | "josesilva@mail.com"     | mensagem: "Cadastro realizado com sucesso!"                               |
            | "Maria" | "da Carmo" | "Brasil" | "Rua Augusta, 3101 " | "Salvador/BA"  | "51112-080" | "(80) 99001-9081" | "maria.carmo.mail.com"   | mensagem alerta: "Não é possivel realizar o cadastro com email inválido." |
            | "Joana" | "Souza"    | "Brasil" | "  "                 | "Maringá/PR"   | "40112-080" | "  "              | "Jona.souza@onemail.com" | mensagem alerta: "Favor preencher os campos obrigatórios."                |