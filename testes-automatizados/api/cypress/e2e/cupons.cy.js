/// <reference types="cypress"/>
import { faker } from '@faker-js/faker';

let urlRequisicao = '/wc/v3/coupons'
let usuario = 'admin_ebac'
let senha = '@admin!&b@c!2022'
let porcentagemCupom = `${Math.floor(Math.random() * 100)}` //Vai gerar um desconto de até 99%
let prefixoCupom = faker.string.alpha(10).toUpperCase() //Vai gerar 10 letras aleatórias

describe('Funcionalidade: Cupons', () => {
  it('Deve listar todos os cupons cadastrados', () => {
    cy.request({
      method: 'GET',
      url: urlRequisicao,
      auth : {
        username: usuario,
        password: senha
      }
    }).then((resposta) => {
      expect(resposta.status).to.equal(200)
    })
  })

  it('Deve cadastrar um novo cupom', () => {
    cy.request({
      method: 'POST',
      url: urlRequisicao,
      auth : {
        username: usuario,
        password: senha
      },
      body: {
        "code": prefixoCupom+porcentagemCupom,
        "amount": porcentagemCupom,
        "discount_type": "fixed_product",
        "description": `Cupom de desconto de ${porcentagemCupom}% de desconto`
      }
    }).then((resposta) => {
      expect(resposta.status).to.equal(201)
      cy.log(resposta.body.code)
    })

  });
  
})