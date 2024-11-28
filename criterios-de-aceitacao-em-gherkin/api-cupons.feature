#language: pt

Funcionalidade: API de cupons
Como admin da EBAC-SHOP
Quero criar um serviço de cupom
Para poder listar e cadastrar os cupons

Cenário: Deve listar todos os cupons
Dado que eu esteja autenticado
Quando eu enviar uma requisição GET para o endpoint "http://lojaebac.ebaconline.art.br/wp-json/wc/v3/coupons"
Então deve ser listado todos os cupons existentes

Cenário: Deve listar um cupom específico
Dado que eu esteja autenticado
Quando eu enviar uma requisição GET para o endpoint "http://lojaebac.ebaconline.art.br/wp-json/wc/v3/coupons/{id}"
Então deve ser listado o cupom especificado

Cenário: Deve criar um cupom
Dado que eu esteja autenticado
Quando eu enviar uma requisição POST para o endpoint "http://lojaebac.ebaconline.art.br/wp-json/wc/v3/coupons"
E especificar no seu body qual é o código do cupom a ser criado
Então o cupom deve ser criado