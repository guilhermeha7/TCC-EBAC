#language: pt

Funcionalidade: Adicionar item ao carrinho
Como cliente da EBAC-SHOP
Quero adicionar produtos no carrinho
Para realizar a compra dos itens

Cenário: Deve adicionar produto ao carrinho
Dado que eu tenha clicado em um produto da loja
Quando eu selecionar tamanho, cor e até 10 unidades
E clicar no botão "Comprar"
E o valor total do carrinho for menor que R$990,00
Então o produto deve ser adicionado ao carrinho

Cenário: Deve aplicar cupom de 10%
Dado que o valor do carrinho esteja entre R$200,00 e R$600,00
Quando eu aplicar o cupom de 10% de desconto
Então devo receber 10% de desconto na compra dos produtos

Cenário: Deve aplicar cupom de 15%
Dado que o valor do carrinho seja maior que R$600,00
Quando eu aplicar o cupom de 15% de desconto
Então devo receber 15% de desconto na compra dos produtos