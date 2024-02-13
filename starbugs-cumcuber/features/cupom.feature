#language: pt

Funcionalidade: Uso de Cupons no Checkout

    Como um usuário do Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout, 
    Para que eu possa obter reduções no preço de produtos específicos ou na minha compra total, aumentando a satisfação com a minha experiência de compra.

Contexto: 
    Dado que iniciei a compra do item:
        | name     | Café com Leite |
        | price    | R$ 19,99       |
        | delivery | R$ 10,00       |
        | total    | R$ 29,99       |

Cenário: Aplicar Desconto de 20%

    Quando aplico o seguinte cupom: "MEUCAFE"
    Então o valor final da compra deve ser atualizado para "R$ 25,99"

    # Dado que estou na página de Checkout 
    #     E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
    #     E que a taxa de entrega é R$ 10,00
    #     E o valor total é de R$ 29,99
    #     E tenho um cupom com 20% de desconto "MEUCAFE"
    # Quando aplico esse cupom de desconto
    # Então o desconto e 20% deve ser aplicado apenas no valor do Café com Leite
    #     E o valor final da compra deve ser atualizado para R$ 25,99


Cenário: Cupom Expirado

    Quando aplico o seguinte cupom: "PROMO20"
    Então devo ver a notificação "Cupom expirado!"
        E o valor final deve permanecer o mesmo

    # Dado que estou na página de Checkout 
    #     E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
    #     E que a taxa de entrega é R$ 10,00
    #     E o valor total é de R$ 29,99
    #     E tenho um cupom que está expirado "PROMO20"
    # Quando aplico esse cupom de desconto
    # Então devo ver a seguinte notificação "Cupom expirado!"
    #     E o valor final deve permanecer o mesmo

Cenário: Cupom Inválido

    Quando aplico o seguinte cupom: "PROMO100"
    Então devo ver a notificação "Cupom inválido!"
        E o valor final deve permanecer o mesmo

    # Dado que estou na página de Checkout 
    #     E o item que está no meu carrinho é o Café com Leite no valor de R$ 19,99
    #     E que a taxa de entrega é R$ 10,00
    #     E o valor total é de R$ 29,99
    #     E tenho um cupom com o código inválido "PROMO100"
    # Quando aplico esse cupom de desconto
    # Então devo ver a seguinte notificação "Cupom inválido!"
    #     E o valor final deve permanecer o mesmo
