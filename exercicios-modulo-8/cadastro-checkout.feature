            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que acesso a tela de cadastro da EBAC-SHOP

            Cenário: Realizar cadastro com sucesso.
            Quando preencho todos os campos obrigatórios
            Então Então deve exibir a mensagem informativa: "Cadastro realizado com sucesso."

            Cenário: Tentar realizar cadastro com email inválido.
            Quando preencho os campos obrigatórios
            E informo um email inválido
            Então Então deve exibir a mensagem de erro: "Não é possivel realizar o cadastro com email inválido"

            Cenário: Tentar realizar cadastro com campos obrigatórios vazios.
            Quando não preencho os campos obrigatórios
            Então Então deve exibir a mensagem de alerta: "Favor preencher os campos obrigatórios"

            Esquema do Cenário: Realizar cadastro na plataforma.
            Quando preencho todos os campos <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone>, <email>.
            Então Então deve exibir a seguinte <mensagem>.

            Exemplos:
            | nome  | sobrenome | pais   | endereco             | cidade       | cep       | telefone        | email                  | mensagem                                              |
            | José  | da Silva  | Brasil | Rua da mata, 118     | São Paulo/SP | 11090-000 | (11) 99123-4567 | josesilva@mail.com     | Cadastro realizado com sucesso!                       |
            | Maria | da Carmo  | Brasil | Rua Augusta, 3101    | Salvador/BA  | 51112-080 | (80) 99001-9081 | maria.carmo.mail.com   | Não é possivel realizar o cadastro com email inválido.|
            | Joana | Souza     | Brasil | Rua 3 Corações, 9012 | Maringá/PR   | 40112-080 |                 | Jona.souza@onemail.com | Favor informar o número do telefone.                  |