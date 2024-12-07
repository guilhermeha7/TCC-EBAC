#language: pt

Funcionalidade: Adicionar item ao carrinho
Como cliente da EBAC-SHOP
Quero adicionar produtos no carrinho
Para realizar a compra dos itens

Cenário: Não permitir adicionar mais de 10 unidades de um mesmo produto ao carrinho
Dado que o usuário tenha clicado em um produto da loja
Quando ele selecionar um tamanho, uma cor e 11 unidades ou mais do produto
E tentar adicioná-lo ao carrinho
Então deve exibir uma mensagem de alerta

Cenário: Não permitir adicionar mais produtos caso o valor do carrinho estiver acima de R$990,00
Dado que o valor do carrinho esteja maior que R$990,00
Quando o usuário tentar adicionar mais produtos
Então deve exibir uma mensagem de alerta

Cenário: Permitir aplicar o cupom de 10% de desconto caso o valor do carrinho estiver entre R$200,00 e R$600,00
Dado que o valor do carrinho esteja entre R$200,00 e R$600,00
Quando o usuário aplicar o cupom de 10% de desconto
Então o usuário deve receber 10% de desconto na compra dos produtos

Cenário: Permitir aplicar o cupom de 15% de desconto caso o valor do carrinho estiver acima de R$600,00
Dado que o valor do carrinho esteja maior que R$600,00
Quando o usuário aplicar o cupom de 15% de desconto
Então o usuário deve receber 15% de desconto na compra dos produtos