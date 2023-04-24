            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que acesso a página do produto na EBAC-SHOP

            Cenário: Limpar configuração do produto
            Quando seleciono a cor, a quantidade e o tamanho do produto
            E opto por limpar
            Então a configuração realizada deve voltar ao estado original

            Esquema do Cenário: Configuração de cor, tamanho e quantidade do produto
            Quando seleciono a <cor>, a <quantidade> e o <tamanho> do produto
            Então deve executar a seguinte <acao>

            Exemplos:
            | cor    | quantidade | tamanho | acao                                                 |
            | "blue" | "5"        | "S"     | o produto deve ser adicionado ao carrinho            |
            | "red"  | "10"       | " "     | mensagem:"Favor selecionar o tamanho do produto"     |
            | " "    | "2"        | "XS"    | mensagem:"Favor selecionar a cor do produto"         |
            | "blue" | "12"       | "XL"    | mensagem:"É premitido apenas 10 produtos por venda." |



