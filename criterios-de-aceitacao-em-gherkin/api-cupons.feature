#language: pt

Funcionalidade: API de cupons
Como admin da EBAC-SHOP
Quero criar um serviço de cupom
Para poder listar e cadastrar os cupons

Contexto: Dado que eu esteja autenticado

Cenário: Listar todos os cupons criados
Quando o admin enviar uma requisição GET para o endpoint "http://lojaebac.ebaconline.art.br/wp-json/wc/v3/coupons"
Então deve ser listado todos os cupons existentes

Cenário: Listar um cupom específico
Quando o admin enviar uma requisição GET para o endpoint "http://lojaebac.ebaconline.art.br/wp-json/wc/v3/coupons/{id}"
Então deve ser listado o cupom do id especificado

Cenário: Criar um novo cupom
Quando o admin enviar uma requisição POST para o endpoint "http://lojaebac.ebaconline.art.br/wp-json/wc/v3/coupons"
E definir no body da requisição um nome para o cupom que não já exista
Então o novo cupom deve ser criado