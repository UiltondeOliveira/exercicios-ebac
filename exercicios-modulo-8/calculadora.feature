            #language: pt
            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Contexto:
            Dado que eu acesse a calculadora

            Cenário: Soma de dois números
            Quando eu somar 2 com 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de 2 némeros
            Quando eu somar <nemero1> com <numero2>
            Então o resultado deve ser <total>

            Exemplos:
            | numero1 | numero2 | total |
            | 1       | 2       | 3     |
            | 4       | 2       | 6     |
            | 5       | 6       | 11    |
            | 10      | 15      | 25    |
