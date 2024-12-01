#language: pt

Funcionalidade: API de cupons
Como admin da EBAC-SHOP
Quero criar um serviço de cupom
Para poder listar e cadastrar os cupons

Contexto: Dado que eu esteja autenticado

Cenário: Deve ser possível listar todos os cupons existentes
Quando eu enviar uma requisição GET para o endpoint "http://lojaebac.ebaconline.art.br/wp-json/wc/v3/coupons"
Então deve ser listado todos os cupons existentes

Cenário: Deve ser possível listar um cupom especifico
Quando eu enviar uma requisição GET para o endpoint "http://lojaebac.ebaconline.art.br/wp-json/wc/v3/coupons/{id}"
Então deve ser listado o cupom especificado

Cenário: Deve ser possível criar um novo cupom, desde o seu nome não tenha sido já criado
Quando eu enviar uma requisição POST para o endpoint "http://lojaebac.ebaconline.art.br/wp-json/wc/v3/coupons"
E definir no seu body qual é o nome do cupom a ser criado
Então o novo cupom deve ser criado