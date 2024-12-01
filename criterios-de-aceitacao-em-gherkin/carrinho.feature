#language: pt

Funcionalidade: Adicionar item ao carrinho
Como cliente da EBAC-SHOP
Quero adicionar produtos no carrinho
Para realizar a compra dos itens

Cenário: Não deve ser possível adicionar mais de 10 unidades de um mesmo produto ao carrinho
Dado que eu tenha clicado em um produto da loja
Quando eu selecionar um tamanho, uma cor e 11 unidades do produto
E tentar adicionar ao carrinho
Então deve exibir uma mensagem de alerta

Cenário: Não deve ser possível adicionar mais produtos caso o valor do carrinho estiver acima de R$990,00
Dado que o valor do carrinho esteja maior que R$990,00
Quando eu tentar adicionar mais produtos
Então deve exibir uma mensagem de alerta

Cenário: O usuário deve aplicar o cupom de 15% de desconto com sucesso caso o valor do seu carrinho estiver acima de R$600,00
Dado que o valor do carrinho seja maior que R$600,00
Quando eu aplicar o cupom de 15% de desconto
Então devo receber 15% de desconto na compra dos produtos