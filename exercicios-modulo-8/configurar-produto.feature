            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que acesso a página do produto na EBAC-SHOP

            Esquema do Cenário: Configuração de cor, tamanho e quantidade do produto
            Quando seleciono a <cor>, a <quantidade> e o <tamanho> do produto
            Então o produto deve ser adicionado ao carrinho

            Exemplos:
            | cor    | quantidade | tamanho |
            | blue   | 5          | S       |
            | orange | 3          | L       |
            | red    | 10         | M       |
            | orange | 2          | XS      |
            | blue   | 8          | XL      |

            Cenário: Configuração do produto sem selecionar o tamanho
            Quando seleciono apenas a cor e a quantidade do produto
            Então deve exibir a mensagem de alerta: "Favor selecionar o tamanho do produto"

            Cenário: Configuração do produto sem selecionar a cor
            Quando seleciono apenas o tamanho e a quantidade do produto
            Então deve exibir a mensagem de alerta: "Favor selecionar a cor do produto"

            Cenário: Configuração da quantidade do produto maior que a permitida
            Quando seleciono a cor, o tamanho e a quantidade do produto igual a 11
            Então deve exibir a mensagem de alerta: "É premitido apenas 10 produtos por venda."

            Cenário: Limpar configuração do produto
            Quando seleciono a cor, a quantidade e o tamanho do produto
            E opto por limpar
            Então a configuração realizada deve voltar ao estado original

