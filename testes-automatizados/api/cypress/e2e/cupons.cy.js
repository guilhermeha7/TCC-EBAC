/// <reference types="cypress"/>
import { faker } from '@faker-js/faker';

let urlRequisicao = '/wc/v3/coupons'
let usuario = 'admin_ebac'
let senha = '@admin!&b@c!2022'

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

  it('Deve listar um cupom específico', () => {
    let idCupomEspecifico
    let porcentagemCupom = `${Math.floor(Math.random() * 100)}` //Vai gerar um desconto de até 99%
    let prefixoCupom = faker.string.alpha(10).toUpperCase() //Vai gerar 10 letras aleatórias

    cy.criarCupom(urlRequisicao, usuario, senha, prefixoCupom, porcentagemCupom).then((resposta) => {
      idCupomEspecifico = resposta.body.id
      cy.request({
        method: 'GET',
        url: `${urlRequisicao}/${idCupomEspecifico}`,
        auth : {
          username: usuario,
          password: senha
        }
      }).then((resposta)=>{
        expect(resposta.status).to.equal(200)
        expect(resposta.body.id).to.equal(idCupomEspecifico)
      })
    })
  });

  it('Deve cadastrar um novo cupom', () => {
    let porcentagemCupom = `${Math.floor(Math.random() * 100)}` //Vai gerar um desconto de até 99%
    let prefixoCupom = faker.string.alpha(10).toUpperCase() //Vai gerar 10 letras aleatórias
    
    cy.criarCupom(urlRequisicao, usuario, senha, prefixoCupom, porcentagemCupom).then((resposta) => {
      expect(resposta.status).to.equal(201)
      cy.log(resposta.body.code)
    })
  });
  
})